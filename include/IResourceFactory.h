#pragma once

#include <memory>
#include <restbed>

using namespace std;
using namespace restbed;

class IResourceFactory {
	public:
	virtual shared_ptr<Ressource> get_resource() const =0;
};