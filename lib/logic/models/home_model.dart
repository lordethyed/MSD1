class HomeModel {
  String? id;
  String? factorynumber;
  String? name;
  String? lastindication;
  String? date;
  String? sum;
  String? description;
  String? model;
  String? high;
  String? gsmnum;
  String? startWork;
  String? lastLevel;
  String? lastRashod;
  String? lastBat;
  String? lastDate;
  String? sensorDateLive;
  String? rowStyle;

  HomeModel(
      {this.id,
        this.factorynumber,
        this.name,
        this.lastindication,
        this.date,
        this.sum,
        this.description,
        this.model,
        this.high,
        this.gsmnum,
        this.startWork,
        this.lastLevel,
        this.lastRashod,
        this.lastBat,
        this.lastDate,
        this.sensorDateLive,
        this.rowStyle});

  HomeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    factorynumber = json['factorynumber'];
    name = json['name'];
    lastindication = json['lastindication'];
    date = json['date'];
    sum = json['sum'];
    description = json['description'];
    model = json['model'];
    high = json['high'];
    gsmnum = json['gsmnum'];
    startWork = json['start_work'];
    lastLevel = json['last_level'];
    lastRashod = json['last_rashod'];
    lastBat = json['last_bat'];
    lastDate = json['last_date'];
    sensorDateLive = json['sensor_date_live'];
    rowStyle = json['row_style'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['factorynumber'] = this.factorynumber;
    data['name'] = this.name;
    data['lastindication'] = this.lastindication;
    data['date'] = this.date;
    data['sum'] = this.sum;
    data['description'] = this.description;
    data['model'] = this.model;
    data['high'] = this.high;
    data['gsmnum'] = this.gsmnum;
    data['start_work'] = this.startWork;
    data['last_level'] = this.lastLevel;
    data['last_rashod'] = this.lastRashod;
    data['last_bat'] = this.lastBat;
    data['last_date'] = this.lastDate;
    data['sensor_date_live'] = this.sensorDateLive;
    data['row_style'] = this.rowStyle;
    return data;
  }
}
