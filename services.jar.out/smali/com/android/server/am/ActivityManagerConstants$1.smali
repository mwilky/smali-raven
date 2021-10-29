.class Lcom/android/server/am/ActivityManagerConstants$1;
.super Ljava/lang/Object;
.source "ActivityManagerConstants.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "binder_heavy_hitter_watcher_threshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "fgs_start_foreground_timeout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "deferred_fgs_notifications_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "boot_time_temp_allowlist_duration"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "fg_to_bg_fgs_grace_duration"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "default_fgs_starts_restriction_check_caller_target_sdk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "deferred_fgs_notification_exclusion_time"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "imperceptible_kill_exempt_packages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "deferred_fgs_notifications_api_gated"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v3, "push_messaging_over_quota_behavior"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "binder_heavy_hitter_watcher_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "default_fgs_starts_restriction_notification_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "fgs_start_allowed_log_sample_rate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "fgs_atom_sample_rate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v3, "min_assoc_log_duration"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v3, "max_cached_processes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "force_bg_check_on_restricted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "default_background_fgs_starts_restriction_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_15
    const-string/jumbo v3, "max_phantom_processes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x16

    goto :goto_1

    :sswitch_16
    const-string v3, "deferred_fgs_notification_interval"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_17
    const-string/jumbo v3, "oomadj_update_policy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_18
    const-string v3, "fgs_start_denied_log_sample_rate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1c

    goto :goto_1

    :sswitch_19
    const-string v3, "fgs_allow_opt_out"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1d

    goto :goto_1

    :sswitch_1a
    const-string v3, "default_background_activity_starts_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1b
    const-string v3, "binder_heavy_hitter_watcher_batchsize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x11

    goto :goto_1

    :sswitch_1c
    const-string v3, "default_fgs_starts_restriction_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1d
    const-string v3, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xd

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$2300(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$2200(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$2100(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$2000(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$1900(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$1800(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_2

    :pswitch_6
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$1700(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_2

    :pswitch_7
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$1600(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_2

    :pswitch_8
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$1500(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_9
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$1400(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_a
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$1300(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_b
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$1200(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_c
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$1100(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_d
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$1000(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_e
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$900(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_f
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$800(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_10
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$700(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_11
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$600(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_12
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$500(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_13
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$400(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_14
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$300(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_15
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$200(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_16
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$100(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_2

    :pswitch_17
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$000(Lcom/android/server/am/ActivityManagerConstants;)V

    nop

    :goto_2
    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ba4b562 -> :sswitch_1d
        -0x719878d5 -> :sswitch_1c
        -0x6d209d2c -> :sswitch_1b
        -0x6a37b8d0 -> :sswitch_1a
        -0x62f6cce1 -> :sswitch_19
        -0x61c0c900 -> :sswitch_18
        -0x53dc231d -> :sswitch_17
        -0x4db39f74 -> :sswitch_16
        -0x48c35170 -> :sswitch_15
        -0x476d69e0 -> :sswitch_14
        -0x47037762 -> :sswitch_13
        -0x41254a05 -> :sswitch_12
        -0x3099a4da -> :sswitch_11
        -0x28b1facc -> :sswitch_10
        -0x1ac3af47 -> :sswitch_f
        -0x13aa2fbd -> :sswitch_e
        -0x116849e6 -> :sswitch_d
        -0xf17951c -> :sswitch_c
        -0xceeb9d0 -> :sswitch_b
        -0x2e7b9c6 -> :sswitch_a
        0x257a0925 -> :sswitch_9
        0x34db0a33 -> :sswitch_8
        0x39ca177c -> :sswitch_7
        0x45611472 -> :sswitch_6
        0x524459dd -> :sswitch_5
        0x59fe4888 -> :sswitch_4
        0x5f40529e -> :sswitch_3
        0x60f0152f -> :sswitch_2
        0x710abd04 -> :sswitch_1
        0x7bd2ee58 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
