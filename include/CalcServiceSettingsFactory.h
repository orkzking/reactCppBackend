#pragma once

#include "IServiceSettingsFactory.h"

class CalcServiceSettingsFactory : public IServiceSettingsFactory {
	public:
	CalcServiceSettingsFactory();
	std::shared_ptr<restbed::Settings> get_settings() const final;
	private:
	std::shared_ptr<restbed::Settings> _settings;
};
