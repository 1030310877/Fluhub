class UserRes {
  String _login;
  int _id;
  String _nodeId;
  String _avatarUrl;
  String _gravatarId;
  String _url;
  String _htmlUrl;
  String _followersUrl;
  String _followingUrl;
  String _gistsUrl;
  String _starredUrl;
  String _subscriptionsUrl;
  String _organizationsUrl;
  String _reposUrl;
  String _eventsUrl;
  String _receivedEventsUrl;
  String _type;
  bool _siteAdmin;
  String _name;
  String _company;
  String _blog;
  String _location;
  String _email;
  bool _hireable;
  String _bio;
  int _publicRepos;
  int _publicGists;
  int _followers;
  int _following;
  String _createdAt;
  String _updatedAt;
  int _privateGists;
  int _totalPrivateRepos;
  int _ownedPrivateRepos;
  int _diskUsage;
  int _collaborators;
  bool _twoFactorAuthentication;
  Plan _plan;

  UserRes(
      {String login,
      int id,
      String nodeId,
      String avatarUrl,
      String gravatarId,
      String url,
      String htmlUrl,
      String followersUrl,
      String followingUrl,
      String gistsUrl,
      String starredUrl,
      String subscriptionsUrl,
      String organizationsUrl,
      String reposUrl,
      String eventsUrl,
      String receivedEventsUrl,
      String type,
      bool siteAdmin,
      String name,
      String company,
      String blog,
      String location,
      String email,
      bool hireable,
      String bio,
      int publicRepos,
      int publicGists,
      int followers,
      int following,
      String createdAt,
      String updatedAt,
      int privateGists,
      int totalPrivateRepos,
      int ownedPrivateRepos,
      int diskUsage,
      int collaborators,
      bool twoFactorAuthentication,
      Plan plan}) {
    this._login = login;
    this._id = id;
    this._nodeId = nodeId;
    this._avatarUrl = avatarUrl;
    this._gravatarId = gravatarId;
    this._url = url;
    this._htmlUrl = htmlUrl;
    this._followersUrl = followersUrl;
    this._followingUrl = followingUrl;
    this._gistsUrl = gistsUrl;
    this._starredUrl = starredUrl;
    this._subscriptionsUrl = subscriptionsUrl;
    this._organizationsUrl = organizationsUrl;
    this._reposUrl = reposUrl;
    this._eventsUrl = eventsUrl;
    this._receivedEventsUrl = receivedEventsUrl;
    this._type = type;
    this._siteAdmin = siteAdmin;
    this._name = name;
    this._company = company;
    this._blog = blog;
    this._location = location;
    this._email = email;
    this._hireable = hireable;
    this._bio = bio;
    this._publicRepos = publicRepos;
    this._publicGists = publicGists;
    this._followers = followers;
    this._following = following;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._privateGists = privateGists;
    this._totalPrivateRepos = totalPrivateRepos;
    this._ownedPrivateRepos = ownedPrivateRepos;
    this._diskUsage = diskUsage;
    this._collaborators = collaborators;
    this._twoFactorAuthentication = twoFactorAuthentication;
    this._plan = plan;
  }

  String get login => _login;

  set login(String login) => _login = login;

  int get id => _id;

  set id(int id) => _id = id;

  String get nodeId => _nodeId;

  set nodeId(String nodeId) => _nodeId = nodeId;

  String get avatarUrl => _avatarUrl;

  set avatarUrl(String avatarUrl) => _avatarUrl = avatarUrl;

  String get gravatarId => _gravatarId;

  set gravatarId(String gravatarId) => _gravatarId = gravatarId;

  String get url => _url;

  set url(String url) => _url = url;

  String get htmlUrl => _htmlUrl;

  set htmlUrl(String htmlUrl) => _htmlUrl = htmlUrl;

  String get followersUrl => _followersUrl;

  set followersUrl(String followersUrl) => _followersUrl = followersUrl;

  String get followingUrl => _followingUrl;

  set followingUrl(String followingUrl) => _followingUrl = followingUrl;

  String get gistsUrl => _gistsUrl;

  set gistsUrl(String gistsUrl) => _gistsUrl = gistsUrl;

  String get starredUrl => _starredUrl;

  set starredUrl(String starredUrl) => _starredUrl = starredUrl;

  String get subscriptionsUrl => _subscriptionsUrl;

  set subscriptionsUrl(String subscriptionsUrl) =>
      _subscriptionsUrl = subscriptionsUrl;

  String get organizationsUrl => _organizationsUrl;

  set organizationsUrl(String organizationsUrl) =>
      _organizationsUrl = organizationsUrl;

  String get reposUrl => _reposUrl;

  set reposUrl(String reposUrl) => _reposUrl = reposUrl;

  String get eventsUrl => _eventsUrl;

  set eventsUrl(String eventsUrl) => _eventsUrl = eventsUrl;

  String get receivedEventsUrl => _receivedEventsUrl;

  set receivedEventsUrl(String receivedEventsUrl) =>
      _receivedEventsUrl = receivedEventsUrl;

  String get type => _type;

  set type(String type) => _type = type;

  bool get siteAdmin => _siteAdmin;

  set siteAdmin(bool siteAdmin) => _siteAdmin = siteAdmin;

  String get name => _name;

  set name(String name) => _name = name;

  String get company => _company;

  set company(String company) => _company = company;

  String get blog => _blog;

  set blog(String blog) => _blog = blog;

  String get location => _location;

  set location(String location) => _location = location;

  String get email => _email;

  set email(String email) => _email = email;

  bool get hireable => _hireable;

  set hireable(bool hireable) => _hireable = hireable;

  String get bio => _bio;

  set bio(String bio) => _bio = bio;

  int get publicRepos => _publicRepos;

  set publicRepos(int publicRepos) => _publicRepos = publicRepos;

  int get publicGists => _publicGists;

  set publicGists(int publicGists) => _publicGists = publicGists;

  int get followers => _followers;

  set followers(int followers) => _followers = followers;

  int get following => _following;

  set following(int following) => _following = following;

  String get createdAt => _createdAt;

  set createdAt(String createdAt) => _createdAt = createdAt;

  String get updatedAt => _updatedAt;

  set updatedAt(String updatedAt) => _updatedAt = updatedAt;

  int get privateGists => _privateGists;

  set privateGists(int privateGists) => _privateGists = privateGists;

  int get totalPrivateRepos => _totalPrivateRepos;

  set totalPrivateRepos(int totalPrivateRepos) =>
      _totalPrivateRepos = totalPrivateRepos;

  int get ownedPrivateRepos => _ownedPrivateRepos;

  set ownedPrivateRepos(int ownedPrivateRepos) =>
      _ownedPrivateRepos = ownedPrivateRepos;

  int get diskUsage => _diskUsage;

  set diskUsage(int diskUsage) => _diskUsage = diskUsage;

  int get collaborators => _collaborators;

  set collaborators(int collaborators) => _collaborators = collaborators;

  bool get twoFactorAuthentication => _twoFactorAuthentication;

  set twoFactorAuthentication(bool twoFactorAuthentication) =>
      _twoFactorAuthentication = twoFactorAuthentication;

  Plan get plan => _plan;

  set plan(Plan plan) => _plan = plan;

  UserRes.fromJson(Map<String, dynamic> json) {
    _login = json['login'];
    _id = json['id'];
    _nodeId = json['node_id'];
    _avatarUrl = json['avatar_url'];
    _gravatarId = json['gravatar_id'];
    _url = json['url'];
    _htmlUrl = json['html_url'];
    _followersUrl = json['followers_url'];
    _followingUrl = json['following_url'];
    _gistsUrl = json['gists_url'];
    _starredUrl = json['starred_url'];
    _subscriptionsUrl = json['subscriptions_url'];
    _organizationsUrl = json['organizations_url'];
    _reposUrl = json['repos_url'];
    _eventsUrl = json['events_url'];
    _receivedEventsUrl = json['received_events_url'];
    _type = json['type'];
    _siteAdmin = json['site_admin'];
    _name = json['name'];
    _company = json['company'];
    _blog = json['blog'];
    _location = json['location'];
    _email = json['email'];
    _hireable = json['hireable'];
    _bio = json['bio'];
    _publicRepos = json['public_repos'];
    _publicGists = json['public_gists'];
    _followers = json['followers'];
    _following = json['following'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _privateGists = json['private_gists'];
    _totalPrivateRepos = json['total_private_repos'];
    _ownedPrivateRepos = json['owned_private_repos'];
    _diskUsage = json['disk_usage'];
    _collaborators = json['collaborators'];
    _twoFactorAuthentication = json['two_factor_authentication'];
    _plan = json['plan'] != null ? new Plan.fromJson(json['plan']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this._login;
    data['id'] = this._id;
    data['node_id'] = this._nodeId;
    data['avatar_url'] = this._avatarUrl;
    data['gravatar_id'] = this._gravatarId;
    data['url'] = this._url;
    data['html_url'] = this._htmlUrl;
    data['followers_url'] = this._followersUrl;
    data['following_url'] = this._followingUrl;
    data['gists_url'] = this._gistsUrl;
    data['starred_url'] = this._starredUrl;
    data['subscriptions_url'] = this._subscriptionsUrl;
    data['organizations_url'] = this._organizationsUrl;
    data['repos_url'] = this._reposUrl;
    data['events_url'] = this._eventsUrl;
    data['received_events_url'] = this._receivedEventsUrl;
    data['type'] = this._type;
    data['site_admin'] = this._siteAdmin;
    data['name'] = this._name;
    data['company'] = this._company;
    data['blog'] = this._blog;
    data['location'] = this._location;
    data['email'] = this._email;
    data['hireable'] = this._hireable;
    data['bio'] = this._bio;
    data['public_repos'] = this._publicRepos;
    data['public_gists'] = this._publicGists;
    data['followers'] = this._followers;
    data['following'] = this._following;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['private_gists'] = this._privateGists;
    data['total_private_repos'] = this._totalPrivateRepos;
    data['owned_private_repos'] = this._ownedPrivateRepos;
    data['disk_usage'] = this._diskUsage;
    data['collaborators'] = this._collaborators;
    data['two_factor_authentication'] = this._twoFactorAuthentication;
    if (this._plan != null) {
      data['plan'] = this._plan.toJson();
    }
    return data;
  }
}

class Plan {
  String _name;
  int _space;
  int _privateRepos;
  int _collaborators;

  Plan({String name, int space, int privateRepos, int collaborators}) {
    this._name = name;
    this._space = space;
    this._privateRepos = privateRepos;
    this._collaborators = collaborators;
  }

  String get name => _name;

  set name(String name) => _name = name;

  int get space => _space;

  set space(int space) => _space = space;

  int get privateRepos => _privateRepos;

  set privateRepos(int privateRepos) => _privateRepos = privateRepos;

  int get collaborators => _collaborators;

  set collaborators(int collaborators) => _collaborators = collaborators;

  Plan.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _space = json['space'];
    _privateRepos = json['private_repos'];
    _collaborators = json['collaborators'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['space'] = this._space;
    data['private_repos'] = this._privateRepos;
    data['collaborators'] = this._collaborators;
    return data;
  }
}
