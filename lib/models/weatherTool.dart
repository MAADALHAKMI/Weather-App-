
class Weather {
    Location? location;
    Current? current;
    Forecast? forecast;

    Weather({this.location, this.current, this.forecast});

    Weather.fromJson(Map<String, dynamic> json) {
        if(json["location"] is Map) {
            location = json["location"] == null ? null : Location.fromJson(json["location"]);
        }
        if(json["current"] is Map) {
            current = json["current"] == null ? null : Current.fromJson(json["current"]);
        }
        if(json["forecast"] is Map) {
            forecast = json["forecast"] == null ? null : Forecast.fromJson(json["forecast"]);
        }
    }

    static List<Weather> fromList(List<Map<String, dynamic>> list) {
        return list.map(Weather.fromJson).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(location != null) {
            _data["location"] = location?.toJson();
        }
        if(current != null) {
            _data["current"] = current?.toJson();
        }
        if(forecast != null) {
            _data["forecast"] = forecast?.toJson();
        }
        return _data;
    }

    Weather copyWith({
        Location? location,
        Current? current,
        Forecast? forecast,
    }) => Weather(
        location: location ?? this.location,
        current: current ?? this.current,
        forecast: forecast ?? this.forecast,
    );
}

class Forecast {
    List<Forecastday>? forecastday;

    Forecast({this.forecastday});

    Forecast.fromJson(Map<String, dynamic> json) {
        if(json["forecastday"] is List) {
            forecastday = json["forecastday"] == null ? null : (json["forecastday"] as List).map((e) => Forecastday.fromJson(e)).toList();
        }
    }

    static List<Forecast> fromList(List<Map<String, dynamic>> list) {
        return list.map(Forecast.fromJson).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(forecastday != null) {
            _data["forecastday"] = forecastday?.map((e) => e.toJson()).toList();
        }
        return _data;
    }

    Forecast copyWith({
        List<Forecastday>? forecastday,
    }) => Forecast(
        forecastday: forecastday ?? this.forecastday,
    );
}

class Forecastday {
    String? date;
    int? dateEpoch;
    Day? day;
    Astro? astro;
    List<Hour>? hour;

    Forecastday({this.date, this.dateEpoch, this.day, this.astro, this.hour});

    Forecastday.fromJson(Map<String, dynamic> json) {
        if(json["date"] is String) {
            date = json["date"];
        }
        if(json["date_epoch"] is num) {
            dateEpoch = (json["date_epoch"] as num).toInt();
        }
        if(json["day"] is Map) {
            day = json["day"] == null ? null : Day.fromJson(json["day"]);
        }
        if(json["astro"] is Map) {
            astro = json["astro"] == null ? null : Astro.fromJson(json["astro"]);
        }
        if(json["hour"] is List) {
            hour = json["hour"] == null ? null : (json["hour"] as List).map((e) => Hour.fromJson(e)).toList();
        }
    }

    static List<Forecastday> fromList(List<Map<String, dynamic>> list) {
        return list.map(Forecastday.fromJson).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["date"] = date;
        _data["date_epoch"] = dateEpoch;
        if(day != null) {
            _data["day"] = day?.toJson();
        }
        if(astro != null) {
            _data["astro"] = astro?.toJson();
        }
        if(hour != null) {
            _data["hour"] = hour?.map((e) => e.toJson()).toList();
        }
        return _data;
    }

    Forecastday copyWith({
        String? date,
        int? dateEpoch,
        Day? day,
        Astro? astro,
        List<Hour>? hour,
    }) => Forecastday(
        date: date ?? this.date,
        dateEpoch: dateEpoch ?? this.dateEpoch,
        day: day ?? this.day,
        astro: astro ?? this.astro,
        hour: hour ?? this.hour,
    );
}

class Hour {
    int? timeEpoch;
    String? time;
    double? tempC;
    double? tempF;
    int? isDay;
    Condition2? condition;
    int? windMph;
    double? windKph;
    int? windDegree;
    String? windDir;
    int? pressureMb;
    double? pressureIn;
    int? precipMm;
    int? precipIn;
    int? snowCm;
    int? humidity;
    int? cloud;
    double? feelslikeC;
    double? feelslikeF;
    double? windchillC;
    double? windchillF;
    double? heatindexC;
    double? heatindexF;
    double? dewpointC;
    double? dewpointF;
    int? willItRain;
    int? chanceOfRain;
    int? willItSnow;
    int? chanceOfSnow;
    int? visKm;
    int? visMiles;
    double? gustMph;
    double? gustKph;
    int? uv;

    Hour({this.timeEpoch, this.time, this.tempC, this.tempF, this.isDay, this.condition, this.windMph, this.windKph, this.windDegree, this.windDir, this.pressureMb, this.pressureIn, this.precipMm, this.precipIn, this.snowCm, this.humidity, this.cloud, this.feelslikeC, this.feelslikeF, this.windchillC, this.windchillF, this.heatindexC, this.heatindexF, this.dewpointC, this.dewpointF, this.willItRain, this.chanceOfRain, this.willItSnow, this.chanceOfSnow, this.visKm, this.visMiles, this.gustMph, this.gustKph, this.uv});

    Hour.fromJson(Map<String, dynamic> json) {
        if(json["time_epoch"] is num) {
            timeEpoch = (json["time_epoch"] as num).toInt();
        }
        if(json["time"] is String) {
            time = json["time"];
        }
        if(json["temp_c"] is num) {
            tempC = (json["temp_c"] as num).toDouble();
        }
        if(json["temp_f"] is num) {
            tempF = (json["temp_f"] as num).toDouble();
        }
        if(json["is_day"] is num) {
            isDay = (json["is_day"] as num).toInt();
        }
        if(json["condition"] is Map) {
            condition = json["condition"] == null ? null : Condition2.fromJson(json["condition"]);
        }
        if(json["wind_mph"] is num) {
            windMph = (json["wind_mph"] as num).toInt();
        }
        if(json["wind_kph"] is num) {
            windKph = (json["wind_kph"] as num).toDouble();
        }
        if(json["wind_degree"] is num) {
            windDegree = (json["wind_degree"] as num).toInt();
        }
        if(json["wind_dir"] is String) {
            windDir = json["wind_dir"];
        }
        if(json["pressure_mb"] is num) {
            pressureMb = (json["pressure_mb"] as num).toInt();
        }
        if(json["pressure_in"] is num) {
            pressureIn = (json["pressure_in"] as num).toDouble();
        }
        if(json["precip_mm"] is num) {
            precipMm = (json["precip_mm"] as num).toInt();
        }
        if(json["precip_in"] is num) {
            precipIn = (json["precip_in"] as num).toInt();
        }
        if(json["snow_cm"] is num) {
            snowCm = (json["snow_cm"] as num).toInt();
        }
        if(json["humidity"] is num) {
            humidity = (json["humidity"] as num).toInt();
        }
        if(json["cloud"] is num) {
            cloud = (json["cloud"] as num).toInt();
        }
        if(json["feelslike_c"] is num) {
            feelslikeC = (json["feelslike_c"] as num).toDouble();
        }
        if(json["feelslike_f"] is num) {
            feelslikeF = (json["feelslike_f"] as num).toDouble();
        }
        if(json["windchill_c"] is num) {
            windchillC = (json["windchill_c"] as num).toDouble();
        }
        if(json["windchill_f"] is num) {
            windchillF = (json["windchill_f"] as num).toDouble();
        }
        if(json["heatindex_c"] is num) {
            heatindexC = (json["heatindex_c"] as num).toDouble();
        }
        if(json["heatindex_f"] is num) {
            heatindexF = (json["heatindex_f"] as num).toDouble();
        }
        if(json["dewpoint_c"] is num) {
            dewpointC = (json["dewpoint_c"] as num).toDouble();
        }
        if(json["dewpoint_f"] is num) {
            dewpointF = (json["dewpoint_f"] as num).toDouble();
        }
        if(json["will_it_rain"] is num) {
            willItRain = (json["will_it_rain"] as num).toInt();
        }
        if(json["chance_of_rain"] is num) {
            chanceOfRain = (json["chance_of_rain"] as num).toInt();
        }
        if(json["will_it_snow"] is num) {
            willItSnow = (json["will_it_snow"] as num).toInt();
        }
        if(json["chance_of_snow"] is num) {
            chanceOfSnow = (json["chance_of_snow"] as num).toInt();
        }
        if(json["vis_km"] is num) {
            visKm = (json["vis_km"] as num).toInt();
        }
        if(json["vis_miles"] is num) {
            visMiles = (json["vis_miles"] as num).toInt();
        }
        if(json["gust_mph"] is num) {
            gustMph = (json["gust_mph"] as num).toDouble();
        }
        if(json["gust_kph"] is num) {
            gustKph = (json["gust_kph"] as num).toDouble();
        }
        if(json["uv"] is num) {
            uv = (json["uv"] as num).toInt();
        }
    }

    static List<Hour> fromList(List<Map<String, dynamic>> list) {
        return list.map(Hour.fromJson).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["time_epoch"] = timeEpoch;
        _data["time"] = time;
        _data["temp_c"] = tempC;
        _data["temp_f"] = tempF;
        _data["is_day"] = isDay;
        if(condition != null) {
            _data["condition"] = condition?.toJson();
        }
        _data["wind_mph"] = windMph;
        _data["wind_kph"] = windKph;
        _data["wind_degree"] = windDegree;
        _data["wind_dir"] = windDir;
        _data["pressure_mb"] = pressureMb;
        _data["pressure_in"] = pressureIn;
        _data["precip_mm"] = precipMm;
        _data["precip_in"] = precipIn;
        _data["snow_cm"] = snowCm;
        _data["humidity"] = humidity;
        _data["cloud"] = cloud;
        _data["feelslike_c"] = feelslikeC;
        _data["feelslike_f"] = feelslikeF;
        _data["windchill_c"] = windchillC;
        _data["windchill_f"] = windchillF;
        _data["heatindex_c"] = heatindexC;
        _data["heatindex_f"] = heatindexF;
        _data["dewpoint_c"] = dewpointC;
        _data["dewpoint_f"] = dewpointF;
        _data["will_it_rain"] = willItRain;
        _data["chance_of_rain"] = chanceOfRain;
        _data["will_it_snow"] = willItSnow;
        _data["chance_of_snow"] = chanceOfSnow;
        _data["vis_km"] = visKm;
        _data["vis_miles"] = visMiles;
        _data["gust_mph"] = gustMph;
        _data["gust_kph"] = gustKph;
        _data["uv"] = uv;
        return _data;
    }

    Hour copyWith({
        int? timeEpoch,
        String? time,
        double? tempC,
        double? tempF,
        int? isDay,
        Condition2? condition,
        int? windMph,
        double? windKph,
        int? windDegree,
        String? windDir,
        int? pressureMb,
        double? pressureIn,
        int? precipMm,
        int? precipIn,
        int? snowCm,
        int? humidity,
        int? cloud,
        double? feelslikeC,
        double? feelslikeF,
        double? windchillC,
        double? windchillF,
        double? heatindexC,
        double? heatindexF,
        double? dewpointC,
        double? dewpointF,
        int? willItRain,
        int? chanceOfRain,
        int? willItSnow,
        int? chanceOfSnow,
        int? visKm,
        int? visMiles,
        double? gustMph,
        double? gustKph,
        int? uv,
    }) => Hour(
        timeEpoch: timeEpoch ?? this.timeEpoch,
        time: time ?? this.time,
        tempC: tempC ?? this.tempC,
        tempF: tempF ?? this.tempF,
        isDay: isDay ?? this.isDay,
        condition: condition ?? this.condition,
        windMph: windMph ?? this.windMph,
        windKph: windKph ?? this.windKph,
        windDegree: windDegree ?? this.windDegree,
        windDir: windDir ?? this.windDir,
        pressureMb: pressureMb ?? this.pressureMb,
        pressureIn: pressureIn ?? this.pressureIn,
        precipMm: precipMm ?? this.precipMm,
        precipIn: precipIn ?? this.precipIn,
        snowCm: snowCm ?? this.snowCm,
        humidity: humidity ?? this.humidity,
        cloud: cloud ?? this.cloud,
        feelslikeC: feelslikeC ?? this.feelslikeC,
        feelslikeF: feelslikeF ?? this.feelslikeF,
        windchillC: windchillC ?? this.windchillC,
        windchillF: windchillF ?? this.windchillF,
        heatindexC: heatindexC ?? this.heatindexC,
        heatindexF: heatindexF ?? this.heatindexF,
        dewpointC: dewpointC ?? this.dewpointC,
        dewpointF: dewpointF ?? this.dewpointF,
        willItRain: willItRain ?? this.willItRain,
        chanceOfRain: chanceOfRain ?? this.chanceOfRain,
        willItSnow: willItSnow ?? this.willItSnow,
        chanceOfSnow: chanceOfSnow ?? this.chanceOfSnow,
        visKm: visKm ?? this.visKm,
        visMiles: visMiles ?? this.visMiles,
        gustMph: gustMph ?? this.gustMph,
        gustKph: gustKph ?? this.gustKph,
        uv: uv ?? this.uv,
    );
}

class Condition2 {
    String? text;
    String? icon;
    int? code;

    Condition2({this.text, this.icon, this.code});

    Condition2.fromJson(Map<String, dynamic> json) {
        if(json["text"] is String) {
            text = json["text"];
        }
        if(json["icon"] is String) {
            icon = json["icon"];
        }
        if(json["code"] is num) {
            code = (json["code"] as num).toInt();
        }
    }

    static List<Condition2> fromList(List<Map<String, dynamic>> list) {
        return list.map(Condition2.fromJson).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["text"] = text;
        _data["icon"] = icon;
        _data["code"] = code;
        return _data;
    }

    Condition2 copyWith({
        String? text,
        String? icon,
        int? code,
    }) => Condition2(
        text: text ?? this.text,
        icon: icon ?? this.icon,
        code: code ?? this.code,
    );
}

class Astro {
    String? sunrise;
    String? sunset;
    String? moonrise;
    String? moonset;
    String? moonPhase;
    int? moonIllumination;
    int? isMoonUp;
    int? isSunUp;

    Astro({this.sunrise, this.sunset, this.moonrise, this.moonset, this.moonPhase, this.moonIllumination, this.isMoonUp, this.isSunUp});

    Astro.fromJson(Map<String, dynamic> json) {
        if(json["sunrise"] is String) {
            sunrise = json["sunrise"];
        }
        if(json["sunset"] is String) {
            sunset = json["sunset"];
        }
        if(json["moonrise"] is String) {
            moonrise = json["moonrise"];
        }
        if(json["moonset"] is String) {
            moonset = json["moonset"];
        }
        if(json["moon_phase"] is String) {
            moonPhase = json["moon_phase"];
        }
        if(json["moon_illumination"] is num) {
            moonIllumination = (json["moon_illumination"] as num).toInt();
        }
        if(json["is_moon_up"] is num) {
            isMoonUp = (json["is_moon_up"] as num).toInt();
        }
        if(json["is_sun_up"] is num) {
            isSunUp = (json["is_sun_up"] as num).toInt();
        }
    }

    static List<Astro> fromList(List<Map<String, dynamic>> list) {
        return list.map(Astro.fromJson).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["sunrise"] = sunrise;
        _data["sunset"] = sunset;
        _data["moonrise"] = moonrise;
        _data["moonset"] = moonset;
        _data["moon_phase"] = moonPhase;
        _data["moon_illumination"] = moonIllumination;
        _data["is_moon_up"] = isMoonUp;
        _data["is_sun_up"] = isSunUp;
        return _data;
    }

    Astro copyWith({
        String? sunrise,
        String? sunset,
        String? moonrise,
        String? moonset,
        String? moonPhase,
        int? moonIllumination,
        int? isMoonUp,
        int? isSunUp,
    }) => Astro(
        sunrise: sunrise ?? this.sunrise,
        sunset: sunset ?? this.sunset,
        moonrise: moonrise ?? this.moonrise,
        moonset: moonset ?? this.moonset,
        moonPhase: moonPhase ?? this.moonPhase,
        moonIllumination: moonIllumination ?? this.moonIllumination,
        isMoonUp: isMoonUp ?? this.isMoonUp,
        isSunUp: isSunUp ?? this.isSunUp,
    );
}

class Day {
    double? maxtempC;
    double? maxtempF;
    double? mintempC;
    double? mintempF;
    int? avgtempC;
    double? avgtempF;
    double? maxwindMph;
    double? maxwindKph;
    double? totalprecipMm;
    double? totalprecipIn;
    int? totalsnowCm;
    double? avgvisKm;
    int? avgvisMiles;
    int? avghumidity;
    int? dailyWillItRain;
    int? dailyChanceOfRain;
    int? dailyWillItSnow;
    int? dailyChanceOfSnow;
    Condition1? condition;
    double? uv;

    Day({this.maxtempC, this.maxtempF, this.mintempC, this.mintempF, this.avgtempC, this.avgtempF, this.maxwindMph, this.maxwindKph, this.totalprecipMm, this.totalprecipIn, this.totalsnowCm, this.avgvisKm, this.avgvisMiles, this.avghumidity, this.dailyWillItRain, this.dailyChanceOfRain, this.dailyWillItSnow, this.dailyChanceOfSnow, this.condition, this.uv});

    Day.fromJson(Map<String, dynamic> json) {
        if(json["maxtemp_c"] is num) {
            maxtempC = (json["maxtemp_c"] as num).toDouble();
        }
        if(json["maxtemp_f"] is num) {
            maxtempF = (json["maxtemp_f"] as num).toDouble();
        }
        if(json["mintemp_c"] is num) {
            mintempC = (json["mintemp_c"] as num).toDouble();
        }
        if(json["mintemp_f"] is num) {
            mintempF = (json["mintemp_f"] as num).toDouble();
        }
        if(json["avgtemp_c"] is num) {
            avgtempC = (json["avgtemp_c"] as num).toInt();
        }
        if(json["avgtemp_f"] is num) {
            avgtempF = (json["avgtemp_f"] as num).toDouble();
        }
        if(json["maxwind_mph"] is num) {
            maxwindMph = (json["maxwind_mph"] as num).toDouble();
        }
        if(json["maxwind_kph"] is num) {
            maxwindKph = (json["maxwind_kph"] as num).toDouble();
        }
        if(json["totalprecip_mm"] is num) {
            totalprecipMm = (json["totalprecip_mm"] as num).toDouble();
        }
        if(json["totalprecip_in"] is num) {
            totalprecipIn = (json["totalprecip_in"] as num).toDouble();
        }
        if(json["totalsnow_cm"] is num) {
            totalsnowCm = (json["totalsnow_cm"] as num).toInt();
        }
        if(json["avgvis_km"] is num) {
            avgvisKm = (json["avgvis_km"] as num).toDouble();
        }
        if(json["avgvis_miles"] is num) {
            avgvisMiles = (json["avgvis_miles"] as num).toInt();
        }
        if(json["avghumidity"] is num) {
            avghumidity = (json["avghumidity"] as num).toInt();
        }
        if(json["daily_will_it_rain"] is num) {
            dailyWillItRain = (json["daily_will_it_rain"] as num).toInt();
        }
        if(json["daily_chance_of_rain"] is num) {
            dailyChanceOfRain = (json["daily_chance_of_rain"] as num).toInt();
        }
        if(json["daily_will_it_snow"] is num) {
            dailyWillItSnow = (json["daily_will_it_snow"] as num).toInt();
        }
        if(json["daily_chance_of_snow"] is num) {
            dailyChanceOfSnow = (json["daily_chance_of_snow"] as num).toInt();
        }
        if(json["condition"] is Map) {
            condition = json["condition"] == null ? null : Condition1.fromJson(json["condition"]);
        }
        if(json["uv"] is num) {
            uv = (json["uv"] as num).toDouble();
        }
    }

    static List<Day> fromList(List<Map<String, dynamic>> list) {
        return list.map(Day.fromJson).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["maxtemp_c"] = maxtempC;
        _data["maxtemp_f"] = maxtempF;
        _data["mintemp_c"] = mintempC;
        _data["mintemp_f"] = mintempF;
        _data["avgtemp_c"] = avgtempC;
        _data["avgtemp_f"] = avgtempF;
        _data["maxwind_mph"] = maxwindMph;
        _data["maxwind_kph"] = maxwindKph;
        _data["totalprecip_mm"] = totalprecipMm;
        _data["totalprecip_in"] = totalprecipIn;
        _data["totalsnow_cm"] = totalsnowCm;
        _data["avgvis_km"] = avgvisKm;
        _data["avgvis_miles"] = avgvisMiles;
        _data["avghumidity"] = avghumidity;
        _data["daily_will_it_rain"] = dailyWillItRain;
        _data["daily_chance_of_rain"] = dailyChanceOfRain;
        _data["daily_will_it_snow"] = dailyWillItSnow;
        _data["daily_chance_of_snow"] = dailyChanceOfSnow;
        if(condition != null) {
            _data["condition"] = condition?.toJson();
        }
        _data["uv"] = uv;
        return _data;
    }

    Day copyWith({
        double? maxtempC,
        double? maxtempF,
        double? mintempC,
        double? mintempF,
        int? avgtempC,
        double? avgtempF,
        double? maxwindMph,
        double? maxwindKph,
        double? totalprecipMm,
        double? totalprecipIn,
        int? totalsnowCm,
        double? avgvisKm,
        int? avgvisMiles,
        int? avghumidity,
        int? dailyWillItRain,
        int? dailyChanceOfRain,
        int? dailyWillItSnow,
        int? dailyChanceOfSnow,
        Condition1? condition,
        double? uv,
    }) => Day(
        maxtempC: maxtempC ?? this.maxtempC,
        maxtempF: maxtempF ?? this.maxtempF,
        mintempC: mintempC ?? this.mintempC,
        mintempF: mintempF ?? this.mintempF,
        avgtempC: avgtempC ?? this.avgtempC,
        avgtempF: avgtempF ?? this.avgtempF,
        maxwindMph: maxwindMph ?? this.maxwindMph,
        maxwindKph: maxwindKph ?? this.maxwindKph,
        totalprecipMm: totalprecipMm ?? this.totalprecipMm,
        totalprecipIn: totalprecipIn ?? this.totalprecipIn,
        totalsnowCm: totalsnowCm ?? this.totalsnowCm,
        avgvisKm: avgvisKm ?? this.avgvisKm,
        avgvisMiles: avgvisMiles ?? this.avgvisMiles,
        avghumidity: avghumidity ?? this.avghumidity,
        dailyWillItRain: dailyWillItRain ?? this.dailyWillItRain,
        dailyChanceOfRain: dailyChanceOfRain ?? this.dailyChanceOfRain,
        dailyWillItSnow: dailyWillItSnow ?? this.dailyWillItSnow,
        dailyChanceOfSnow: dailyChanceOfSnow ?? this.dailyChanceOfSnow,
        condition: condition ?? this.condition,
        uv: uv ?? this.uv,
    );
}

class Condition1 {
    String? text;
    String? icon;
    int? code;

    Condition1({this.text, this.icon, this.code});

    Condition1.fromJson(Map<String, dynamic> json) {
        if(json["text"] is String) {
            text = json["text"];
        }
        if(json["icon"] is String) {
            icon = json["icon"];
        }
        if(json["code"] is num) {
            code = (json["code"] as num).toInt();
        }
    }

    static List<Condition1> fromList(List<Map<String, dynamic>> list) {
        return list.map(Condition1.fromJson).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["text"] = text;
        _data["icon"] = icon;
        _data["code"] = code;
        return _data;
    }

    Condition1 copyWith({
        String? text,
        String? icon,
        int? code,
    }) => Condition1(
        text: text ?? this.text,
        icon: icon ?? this.icon,
        code: code ?? this.code,
    );
}

class Current {
    int? lastUpdatedEpoch;
    String? lastUpdated;
    double? tempC;
    double? tempF;
    int? isDay;
    Condition? condition;
    double? windMph;
    double? windKph;
    int? windDegree;
    String? windDir;
    int? pressureMb;
    double? pressureIn;
    double? precipMm;
    double? precipIn;
    int? humidity;
    int? cloud;
    int? feelslikeC;
    double? feelslikeF;
    double? windchillC;
    double? windchillF;
    double? heatindexC;
    double? heatindexF;
    double? dewpointC;
    double? dewpointF;
    int? visKm;
    int? visMiles;
    double? uv;
    int? gustMph;
    int? gustKph;

    Current({this.lastUpdatedEpoch, this.lastUpdated, this.tempC, this.tempF, this.isDay, this.condition, this.windMph, this.windKph, this.windDegree, this.windDir, this.pressureMb, this.pressureIn, this.precipMm, this.precipIn, this.humidity, this.cloud, this.feelslikeC, this.feelslikeF, this.windchillC, this.windchillF, this.heatindexC, this.heatindexF, this.dewpointC, this.dewpointF, this.visKm, this.visMiles, this.uv, this.gustMph, this.gustKph});

    Current.fromJson(Map<String, dynamic> json) {
        if(json["last_updated_epoch"] is num) {
            lastUpdatedEpoch = (json["last_updated_epoch"] as num).toInt();
        }
        if(json["last_updated"] is String) {
            lastUpdated = json["last_updated"];
        }
        if(json["temp_c"] is num) {
            tempC = (json["temp_c"] as num).toDouble();
        }
        if(json["temp_f"] is num) {
            tempF = (json["temp_f"] as num).toDouble();
        }
        if(json["is_day"] is num) {
            isDay = (json["is_day"] as num).toInt();
        }
        if(json["condition"] is Map) {
            condition = json["condition"] == null ? null : Condition.fromJson(json["condition"]);
        }
        if(json["wind_mph"] is num) {
            windMph = (json["wind_mph"] as num).toDouble();
        }
        if(json["wind_kph"] is num) {
            windKph = (json["wind_kph"] as num).toDouble();
        }
        if(json["wind_degree"] is num) {
            windDegree = (json["wind_degree"] as num).toInt();
        }
        if(json["wind_dir"] is String) {
            windDir = json["wind_dir"];
        }
        if(json["pressure_mb"] is num) {
            pressureMb = (json["pressure_mb"] as num).toInt();
        }
        if(json["pressure_in"] is num) {
            pressureIn = (json["pressure_in"] as num).toDouble();
        }
        if(json["precip_mm"] is num) {
            precipMm = (json["precip_mm"] as num).toDouble();
        }
        if(json["precip_in"] is num) {
            precipIn = (json["precip_in"] as num).toDouble();
        }
        if(json["humidity"] is num) {
            humidity = (json["humidity"] as num).toInt();
        }
        if(json["cloud"] is num) {
            cloud = (json["cloud"] as num).toInt();
        }
        if(json["feelslike_c"] is num) {
            feelslikeC = (json["feelslike_c"] as num).toInt();
        }
        if(json["feelslike_f"] is num) {
            feelslikeF = (json["feelslike_f"] as num).toDouble();
        }
        if(json["windchill_c"] is num) {
            windchillC = (json["windchill_c"] as num).toDouble();
        }
        if(json["windchill_f"] is num) {
            windchillF = (json["windchill_f"] as num).toDouble();
        }
        if(json["heatindex_c"] is num) {
            heatindexC = (json["heatindex_c"] as num).toDouble();
        }
        if(json["heatindex_f"] is num) {
            heatindexF = (json["heatindex_f"] as num).toDouble();
        }
        if(json["dewpoint_c"] is num) {
            dewpointC = (json["dewpoint_c"] as num).toDouble();
        }
        if(json["dewpoint_f"] is num) {
            dewpointF = (json["dewpoint_f"] as num).toDouble();
        }
        if(json["vis_km"] is num) {
            visKm = (json["vis_km"] as num).toInt();
        }
        if(json["vis_miles"] is num) {
            visMiles = (json["vis_miles"] as num).toInt();
        }
        if(json["uv"] is num) {
            uv = (json["uv"] as num).toDouble();
        }
        if(json["gust_mph"] is num) {
            gustMph = (json["gust_mph"] as num).toInt();
        }
        if(json["gust_kph"] is num) {
            gustKph = (json["gust_kph"] as num).toInt();
        }
    }

    static List<Current> fromList(List<Map<String, dynamic>> list) {
        return list.map(Current.fromJson).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["last_updated_epoch"] = lastUpdatedEpoch;
        _data["last_updated"] = lastUpdated;
        _data["temp_c"] = tempC;
        _data["temp_f"] = tempF;
        _data["is_day"] = isDay;
        if(condition != null) {
            _data["condition"] = condition?.toJson();
        }
        _data["wind_mph"] = windMph;
        _data["wind_kph"] = windKph;
        _data["wind_degree"] = windDegree;
        _data["wind_dir"] = windDir;
        _data["pressure_mb"] = pressureMb;
        _data["pressure_in"] = pressureIn;
        _data["precip_mm"] = precipMm;
        _data["precip_in"] = precipIn;
        _data["humidity"] = humidity;
        _data["cloud"] = cloud;
        _data["feelslike_c"] = feelslikeC;
        _data["feelslike_f"] = feelslikeF;
        _data["windchill_c"] = windchillC;
        _data["windchill_f"] = windchillF;
        _data["heatindex_c"] = heatindexC;
        _data["heatindex_f"] = heatindexF;
        _data["dewpoint_c"] = dewpointC;
        _data["dewpoint_f"] = dewpointF;
        _data["vis_km"] = visKm;
        _data["vis_miles"] = visMiles;
        _data["uv"] = uv;
        _data["gust_mph"] = gustMph;
        _data["gust_kph"] = gustKph;
        return _data;
    }

    Current copyWith({
        int? lastUpdatedEpoch,
        String? lastUpdated,
        double? tempC,
        double? tempF,
        int? isDay,
        Condition? condition,
        double? windMph,
        double? windKph,
        int? windDegree,
        String? windDir,
        int? pressureMb,
        double? pressureIn,
        double? precipMm,
        double? precipIn,
        int? humidity,
        int? cloud,
        int? feelslikeC,
        double? feelslikeF,
        double? windchillC,
        double? windchillF,
        double? heatindexC,
        double? heatindexF,
        double? dewpointC,
        double? dewpointF,
        int? visKm,
        int? visMiles,
        double? uv,
        int? gustMph,
        int? gustKph,
    }) => Current(
        lastUpdatedEpoch: lastUpdatedEpoch ?? this.lastUpdatedEpoch,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        tempC: tempC ?? this.tempC,
        tempF: tempF ?? this.tempF,
        isDay: isDay ?? this.isDay,
        condition: condition ?? this.condition,
        windMph: windMph ?? this.windMph,
        windKph: windKph ?? this.windKph,
        windDegree: windDegree ?? this.windDegree,
        windDir: windDir ?? this.windDir,
        pressureMb: pressureMb ?? this.pressureMb,
        pressureIn: pressureIn ?? this.pressureIn,
        precipMm: precipMm ?? this.precipMm,
        precipIn: precipIn ?? this.precipIn,
        humidity: humidity ?? this.humidity,
        cloud: cloud ?? this.cloud,
        feelslikeC: feelslikeC ?? this.feelslikeC,
        feelslikeF: feelslikeF ?? this.feelslikeF,
        windchillC: windchillC ?? this.windchillC,
        windchillF: windchillF ?? this.windchillF,
        heatindexC: heatindexC ?? this.heatindexC,
        heatindexF: heatindexF ?? this.heatindexF,
        dewpointC: dewpointC ?? this.dewpointC,
        dewpointF: dewpointF ?? this.dewpointF,
        visKm: visKm ?? this.visKm,
        visMiles: visMiles ?? this.visMiles,
        uv: uv ?? this.uv,
        gustMph: gustMph ?? this.gustMph,
        gustKph: gustKph ?? this.gustKph,
    );
}

class Condition {
    String? text;
    String? icon;
    int? code;

    Condition({this.text, this.icon, this.code});

    Condition.fromJson(Map<String, dynamic> json) {
        if(json["text"] is String) {
            text = json["text"];
        }
        if(json["icon"] is String) {
            icon = json["icon"];
        }
        if(json["code"] is num) {
            code = (json["code"] as num).toInt();
        }
    }

    static List<Condition> fromList(List<Map<String, dynamic>> list) {
        return list.map(Condition.fromJson).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["text"] = text;
        _data["icon"] = icon;
        _data["code"] = code;
        return _data;
    }

    Condition copyWith({
        String? text,
        String? icon,
        int? code,
    }) => Condition(
        text: text ?? this.text,
        icon: icon ?? this.icon,
        code: code ?? this.code,
    );
}

class Location {
    String? name;
    String? region;
    String? country;
    double? lat;
    double? lon;
    String? tzId;
    int? localtimeEpoch;
    String? localtime;

    Location({this.name, this.region, this.country, this.lat, this.lon, this.tzId, this.localtimeEpoch, this.localtime});

    Location.fromJson(Map<String, dynamic> json) {
        if(json["name"] is String) {
            name = json["name"];
        }
        if(json["region"] is String) {
            region = json["region"];
        }
        if(json["country"] is String) {
            country = json["country"];
        }
        if(json["lat"] is num) {
            lat = (json["lat"] as num).toDouble();
        }
        if(json["lon"] is num) {
            lon = (json["lon"] as num).toDouble();
        }
        if(json["tz_id"] is String) {
            tzId = json["tz_id"];
        }
        if(json["localtime_epoch"] is num) {
            localtimeEpoch = (json["localtime_epoch"] as num).toInt();
        }
        if(json["localtime"] is String) {
            localtime = json["localtime"];
        }
    }

    static List<Location> fromList(List<Map<String, dynamic>> list) {
        return list.map(Location.fromJson).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["name"] = name;
        _data["region"] = region;
        _data["country"] = country;
        _data["lat"] = lat;
        _data["lon"] = lon;
        _data["tz_id"] = tzId;
        _data["localtime_epoch"] = localtimeEpoch;
        _data["localtime"] = localtime;
        return _data;
    }

    Location copyWith({
        String? name,
        String? region,
        String? country,
        double? lat,
        double? lon,
        String? tzId,
        int? localtimeEpoch,
        String? localtime,
    }) => Location(
        name: name ?? this.name,
        region: region ?? this.region,
        country: country ?? this.country,
        lat: lat ?? this.lat,
        lon: lon ?? this.lon,
        tzId: tzId ?? this.tzId,
        localtimeEpoch: localtimeEpoch ?? this.localtimeEpoch,
        localtime: localtime ?? this.localtime,
    );
}