.class public Lcom/android/server/am/ActivityManagerConstants$1;
.super Ljava/lang/Object;
.source "ActivityManagerConstants.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0x2a

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v2, "service_bind_almost_perceptible_timeout_ms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x29

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "binder_heavy_hitter_watcher_threshold"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x28

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "fgs_start_foreground_timeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v1, 0x27

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v1, 0x26

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v1, 0x25

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "deferred_fgs_notifications_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v1, 0x24

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "extra_delay_svc_restart_mem_pressure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v1, 0x23

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "kill_bg_restricted_cached_idle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v1, 0x22

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "boot_time_temp_allowlist_duration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v1, 0x21

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "fg_to_bg_fgs_grace_duration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v1, 0x20

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v2, "no_kill_cached_processes_until_boot_completed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v1, 0x1f

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "default_fgs_starts_restriction_check_caller_target_sdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "deferred_fgs_notification_exclusion_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v1, 0x1d

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "enable_extra_delay_svc_restart_mem_pressure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "defer_boot_completed_broadcast"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "imperceptible_kill_exempt_packages"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "deferred_fgs_notifications_api_gated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v2, "no_kill_cached_processes_post_boot_completed_duration_millis"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v2, "push_messaging_over_quota_behavior"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "binder_heavy_hitter_watcher_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "default_fgs_starts_restriction_notification_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "fgs_start_allowed_log_sample_rate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v2, "service_start_foreground_timeout_ms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "fgs_atom_sample_rate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v2, "process_kill_timeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v2, "min_assoc_log_duration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v2, "network_access_timeout_ms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v2, "max_empty_time_millis"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_1d
    const-string/jumbo v2, "max_cached_processes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_1e
    const-string v2, "force_bg_check_on_restricted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_1f
    const-string v2, "default_background_fgs_starts_restriction_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_1

    :cond_20
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_20
    const-string/jumbo v2, "max_phantom_processes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_1

    :cond_21
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_21
    const-string v2, "deferred_fgs_notification_interval"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_1

    :cond_22
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_22
    const-string/jumbo v2, "oomadj_update_policy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_1

    :cond_23
    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_23
    const-string v2, "fgs_start_denied_log_sample_rate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_1

    :cond_24
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_24
    const-string v2, "fgs_allow_opt_out"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_1

    :cond_25
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_25
    const-string v2, "default_background_activity_starts_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_1

    :cond_26
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_26
    const-string v2, "binder_heavy_hitter_watcher_batchsize"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_1

    :cond_27
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_27
    const-string/jumbo v2, "service_start_foreground_anr_delay_ms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_1

    :cond_28
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_28
    const-string v2, "default_fgs_starts_restriction_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_1

    :cond_29
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_29
    const-string v2, "kill_bg_restricted_cached_idle_settle_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_1

    :cond_2a
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2a
    const-string v2, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_1

    :cond_2b
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceBindAlmostPerceptibleTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartForegroundTimeout(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralEnable(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateKillBgRestrictedCachedIdle(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBootTimeTempAllowListDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgToBgFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNoKillCachedProcessesUntilBootCompleted(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestrictionCheckCallerTargetSdk(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralExclusionTime(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateEnableExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateDeferBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralApiGated(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNoKillCachedProcessesPostBootCompletedDurationMillis(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdatePushMessagingOverQuotaBehavior(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestrictionNotification(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartAllowedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceStartForegroundTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsAtomSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateProcessKillTimeout(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMinAssocLogDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNetworkAccessTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxEmptyTimeMillis(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxCachedProcesses(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateForceRestrictedBackgroundCheck(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_19
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBackgroundFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxPhantomProcesses(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralInterval(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateOomAdjUpdatePolicy(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartDeniedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsAllowOptOut(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBackgroundActivityStarts(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBinderHeavyHitterWatcher(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceStartForegroundAnrDealyMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateKillBgRestrictedCachedIdleSettleTime(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :pswitch_24
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateImperceptibleKillExemptions(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :cond_2c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ba4b562 -> :sswitch_2a
        -0x76fa06f8 -> :sswitch_29
        -0x719878d5 -> :sswitch_28
        -0x71781c6f -> :sswitch_27
        -0x6d209d2c -> :sswitch_26
        -0x6a37b8d0 -> :sswitch_25
        -0x62f6cce1 -> :sswitch_24
        -0x61c0c900 -> :sswitch_23
        -0x53dc231d -> :sswitch_22
        -0x4db39f74 -> :sswitch_21
        -0x48c35170 -> :sswitch_20
        -0x476d69e0 -> :sswitch_1f
        -0x47037762 -> :sswitch_1e
        -0x41254a05 -> :sswitch_1d
        -0x3eef3615 -> :sswitch_1c
        -0x397974d2 -> :sswitch_1b
        -0x3099a4da -> :sswitch_1a
        -0x2ddb96b0 -> :sswitch_19
        -0x28b1facc -> :sswitch_18
        -0x226e8ce7 -> :sswitch_17
        -0x1ac3af47 -> :sswitch_16
        -0x13aa2fbd -> :sswitch_15
        -0x116849e6 -> :sswitch_14
        -0xf17951c -> :sswitch_13
        -0xd5a912d -> :sswitch_12
        -0xceeb9d0 -> :sswitch_11
        -0x2e7b9c6 -> :sswitch_10
        0x14ce72d -> :sswitch_f
        0x105030a5 -> :sswitch_e
        0x257a0925 -> :sswitch_d
        0x34db0a33 -> :sswitch_c
        0x350b53bb -> :sswitch_b
        0x39ca177c -> :sswitch_a
        0x45611472 -> :sswitch_9
        0x477b2286 -> :sswitch_8
        0x50949369 -> :sswitch_7
        0x524459dd -> :sswitch_6
        0x59fe4888 -> :sswitch_5
        0x5f40529e -> :sswitch_4
        0x60f0152f -> :sswitch_3
        0x710abd04 -> :sswitch_2
        0x7805f2e7 -> :sswitch_1
        0x7bd2ee58 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_20
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_24
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_20
        :pswitch_20
        :pswitch_1
        :pswitch_20
        :pswitch_0
        :pswitch_20
    .end packed-switch
.end method
