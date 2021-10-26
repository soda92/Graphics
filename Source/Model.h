﻿// Copyright 2021 SMS
// License(Apache-2.0)

#pragma once

#include <system_error>
#include <assimp/scene.h>
#include <assimp/Exporter.hpp>
#include <assimp/Importer.hpp>
#include <filesystem>
#include <functional>
#include <unordered_map>

// TODO: 析构后线程可能仍在运行, 导致 callback 获取不存在的数据.
//       或许应该让用户自己创建一个线程/协程来执行同步操作.

/**
 * @brief 3D 模型.
 */
class Model
{
public:
	/**
	 * @brief 从文件载入场景.
	 * 
	 * @param path 场景文件路径.
	 */
	void load(const std::filesystem::path& path);

	/**
	 * @brief 保存场景到文件.
	 * 
	 * @param path 场景文件路径.
	 */
	void save(const std::filesystem::path& path);

	void loadAsync(const std::filesystem::path& path, std::function<void(std::error_code)> callback = nullptr) noexcept;
	void saveAsync(const std::filesystem::path& path, std::function<void(std::error_code)> callback = nullptr) noexcept;

private:
	/**
	 * @brief 从场景中递归载入节点数据.
	 * 
	 * @param node assimp 节点.
	 */
	void loadNode(aiNode* node);

	/**
	 * @brief 载入 assimp 网格数据, 创建 Mesh.
	 * 
	 * @param mesh assimp 网格.
	 */
	void loadMesh(aiMesh* mesh);

	std::filesystem::path path;

	const aiScene*   scene = nullptr;
	Assimp::Importer importer;
	Assimp::Exporter exporter;
};

/*
inline static std::vector<std::string> extensions = {
	"collada", "x", "stp", "obj", "objnomtl", "stl", "stlb", "ply", "plyb", "3ds",
	"gltf2", "glb2", "gltf", "glb", "assbin", "assxml", "x3d", "3mf", "pbrt", "assjson"};
*/