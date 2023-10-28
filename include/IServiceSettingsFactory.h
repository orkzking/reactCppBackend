#pragma once

#include <memory>
#include <restbed>

class IServiceSettingsFactory {
	public:
	virtual shared_ptr<Settings> get_settings() const =0;
}