import 'dart:core';
import 'dart:io';

import 'package:docker_api/src/options/attach_options.dart';

class RunOptions {

  Map<InternetAddress, InternetAddress> addHost;
  Attach attach;
  int blkioWeight; ///between 10 and 1000
  Map<String, int> blkioWeightDevice;
  List capAdd;
  List capDrop;
  String cgroupParent;
  String cidfile;
  double cpuPeriod;
  double cpuQuota;
  double cpuRtPeriod;
  double cpuRtRuntime;
  double cpuShares;
  int cpus;
//  String cpusetCpus;
//  String cpusetMems;
  bool detach;
  String detachKeys;
  List<InternetAddress> device;
//  List deviceCgroupRule;
//  List deviceReadBps;
//  List deviceReadIops;
//  List deviceWriteBps;
//  List deviceWriteIops;
  bool disableContentTrust;
  List<InternetAddress> dns;
  List dnsOption;
  List<InternetAddress> dnsSearch;
  String domainName;
  String entryPoint;
  List env;
  List envFile;
  List expose;
  String gpus; ///all to add all gpus
  List groupAdd;
  String healthCmd;
  Duration healthInterval;
  int healthRetries;
  Duration healthStartPeriod;
  Duration healthTimeout;
  bool help;
  String hostname;
  bool init;
  bool interactive;
  InternetAddress ip;
  InternetAddress ip6;
  String ipc;
  String isolation;
  int kernelMemory;
  String label;
  String labelFile;
  String link;
  List<InternetAddress> linkLocalIp;
  String arg;
}
