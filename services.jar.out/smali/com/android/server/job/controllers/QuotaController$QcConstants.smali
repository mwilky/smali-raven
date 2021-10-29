.class Lcom/android/server/job/controllers/QuotaController$QcConstants;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QcConstants"
.end annotation


# static fields
.field private static final DEFAULT_ALLOWED_TIME_PER_PERIOD_MS:J = 0x927c0L

.field private static final DEFAULT_EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J = 0x2bf20L

.field private static final DEFAULT_EJ_GRACE_PERIOD_TOP_APP_MS:J = 0xea60L

.field private static final DEFAULT_EJ_LIMIT_ACTIVE_MS:J = 0x1b7740L

.field private static final DEFAULT_EJ_LIMIT_ADDITION_INSTALLER_MS:J = 0x1b7740L

.field private static final DEFAULT_EJ_LIMIT_ADDITION_SPECIAL_MS:J = 0xdbba0L

.field private static final DEFAULT_EJ_LIMIT_FREQUENT_MS:J = 0x927c0L

.field private static final DEFAULT_EJ_LIMIT_RARE_MS:J = 0x927c0L

.field private static final DEFAULT_EJ_LIMIT_RESTRICTED_MS:J = 0x493e0L

.field private static final DEFAULT_EJ_LIMIT_WORKING_MS:J = 0x1b7740L

.field private static final DEFAULT_EJ_REWARD_INTERACTION_MS:J = 0x3a98L

.field private static final DEFAULT_EJ_REWARD_NOTIFICATION_SEEN_MS:J = 0x0L

.field private static final DEFAULT_EJ_REWARD_TOP_APP_MS:J = 0x2710L

.field private static final DEFAULT_EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J = 0x7530L

.field private static final DEFAULT_EJ_WINDOW_SIZE_MS:J = 0x5265c00L

.field private static final DEFAULT_IN_QUOTA_BUFFER_MS:J = 0x7530L

.field private static final DEFAULT_MAX_EXECUTION_TIME_MS:J = 0xdbba00L

.field private static final DEFAULT_MAX_JOB_COUNT_ACTIVE:I = 0x4b

.field private static final DEFAULT_MAX_JOB_COUNT_FREQUENT:I = 0xc8

.field private static final DEFAULT_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I = 0x14

.field private static final DEFAULT_MAX_JOB_COUNT_RARE:I = 0x30

.field private static final DEFAULT_MAX_JOB_COUNT_RESTRICTED:I = 0xa

.field private static final DEFAULT_MAX_JOB_COUNT_WORKING:I = 0x78

.field private static final DEFAULT_MAX_SESSION_COUNT_ACTIVE:I = 0x4b

.field private static final DEFAULT_MAX_SESSION_COUNT_FREQUENT:I = 0x8

.field private static final DEFAULT_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I = 0x14

.field private static final DEFAULT_MAX_SESSION_COUNT_RARE:I = 0x3

.field private static final DEFAULT_MAX_SESSION_COUNT_RESTRICTED:I = 0x1

.field private static final DEFAULT_MAX_SESSION_COUNT_WORKING:I = 0xa

.field private static final DEFAULT_MIN_QUOTA_CHECK_DELAY_MS:J = 0xea60L

.field private static final DEFAULT_RATE_LIMITING_WINDOW_MS:J = 0xea60L

.field private static final DEFAULT_TIMING_SESSION_COALESCING_DURATION_MS:J = 0x1388L

.field private static final DEFAULT_WINDOW_SIZE_ACTIVE_MS:J = 0x927c0L

.field private static final DEFAULT_WINDOW_SIZE_FREQUENT_MS:J = 0x1b77400L

.field private static final DEFAULT_WINDOW_SIZE_RARE_MS:J = 0x5265c00L

.field private static final DEFAULT_WINDOW_SIZE_RESTRICTED_MS:J = 0x5265c00L

.field private static final DEFAULT_WINDOW_SIZE_WORKING_MS:J = 0x6ddd00L

.field static final KEY_ALLOWED_TIME_PER_PERIOD_MS:Ljava/lang/String; = "qc_allowed_time_per_period_ms"

.field static final KEY_EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:Ljava/lang/String; = "qc_ej_grace_period_temp_allowlist_ms"

.field static final KEY_EJ_GRACE_PERIOD_TOP_APP_MS:Ljava/lang/String; = "qc_ej_grace_period_top_app_ms"

.field static final KEY_EJ_LIMIT_ACTIVE_MS:Ljava/lang/String; = "qc_ej_limit_active_ms"

.field static final KEY_EJ_LIMIT_ADDITION_INSTALLER_MS:Ljava/lang/String; = "qc_ej_limit_addition_installer_ms"

.field static final KEY_EJ_LIMIT_ADDITION_SPECIAL_MS:Ljava/lang/String; = "qc_ej_limit_addition_special_ms"

.field static final KEY_EJ_LIMIT_FREQUENT_MS:Ljava/lang/String; = "qc_ej_limit_frequent_ms"

.field static final KEY_EJ_LIMIT_RARE_MS:Ljava/lang/String; = "qc_ej_limit_rare_ms"

.field static final KEY_EJ_LIMIT_RESTRICTED_MS:Ljava/lang/String; = "qc_ej_limit_restricted_ms"

.field static final KEY_EJ_LIMIT_WORKING_MS:Ljava/lang/String; = "qc_ej_limit_working_ms"

.field static final KEY_EJ_REWARD_INTERACTION_MS:Ljava/lang/String; = "qc_ej_reward_interaction_ms"

.field static final KEY_EJ_REWARD_NOTIFICATION_SEEN_MS:Ljava/lang/String; = "qc_ej_reward_notification_seen_ms"

.field static final KEY_EJ_REWARD_TOP_APP_MS:Ljava/lang/String; = "qc_ej_reward_top_app_ms"

.field static final KEY_EJ_TOP_APP_TIME_CHUNK_SIZE_MS:Ljava/lang/String; = "qc_ej_top_app_time_chunk_size_ms"

.field static final KEY_EJ_WINDOW_SIZE_MS:Ljava/lang/String; = "qc_ej_window_size_ms"

.field static final KEY_IN_QUOTA_BUFFER_MS:Ljava/lang/String; = "qc_in_quota_buffer_ms"

.field static final KEY_MAX_EXECUTION_TIME_MS:Ljava/lang/String; = "qc_max_execution_time_ms"

.field static final KEY_MAX_JOB_COUNT_ACTIVE:Ljava/lang/String; = "qc_max_job_count_active"

.field static final KEY_MAX_JOB_COUNT_FREQUENT:Ljava/lang/String; = "qc_max_job_count_frequent"

.field static final KEY_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:Ljava/lang/String; = "qc_max_job_count_per_rate_limiting_window"

.field static final KEY_MAX_JOB_COUNT_RARE:Ljava/lang/String; = "qc_max_job_count_rare"

.field static final KEY_MAX_JOB_COUNT_RESTRICTED:Ljava/lang/String; = "qc_max_job_count_restricted"

.field static final KEY_MAX_JOB_COUNT_WORKING:Ljava/lang/String; = "qc_max_job_count_working"

.field static final KEY_MAX_SESSION_COUNT_ACTIVE:Ljava/lang/String; = "qc_max_session_count_active"

.field static final KEY_MAX_SESSION_COUNT_FREQUENT:Ljava/lang/String; = "qc_max_session_count_frequent"

.field static final KEY_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:Ljava/lang/String; = "qc_max_session_count_per_rate_limiting_window"

.field static final KEY_MAX_SESSION_COUNT_RARE:Ljava/lang/String; = "qc_max_session_count_rare"

.field static final KEY_MAX_SESSION_COUNT_RESTRICTED:Ljava/lang/String; = "qc_max_session_count_restricted"

.field static final KEY_MAX_SESSION_COUNT_WORKING:Ljava/lang/String; = "qc_max_session_count_working"

.field static final KEY_MIN_QUOTA_CHECK_DELAY_MS:Ljava/lang/String; = "qc_min_quota_check_delay_ms"

.field static final KEY_RATE_LIMITING_WINDOW_MS:Ljava/lang/String; = "qc_rate_limiting_window_ms"

.field static final KEY_TIMING_SESSION_COALESCING_DURATION_MS:Ljava/lang/String; = "qc_timing_session_coalescing_duration_ms"

.field static final KEY_WINDOW_SIZE_ACTIVE_MS:Ljava/lang/String; = "qc_window_size_active_ms"

.field static final KEY_WINDOW_SIZE_FREQUENT_MS:Ljava/lang/String; = "qc_window_size_frequent_ms"

.field static final KEY_WINDOW_SIZE_RARE_MS:Ljava/lang/String; = "qc_window_size_rare_ms"

.field static final KEY_WINDOW_SIZE_RESTRICTED_MS:Ljava/lang/String; = "qc_window_size_restricted_ms"

.field static final KEY_WINDOW_SIZE_WORKING_MS:Ljava/lang/String; = "qc_window_size_working_ms"

.field private static final MIN_BUCKET_JOB_COUNT:I = 0xa

.field private static final MIN_BUCKET_SESSION_COUNT:I = 0x1

.field private static final MIN_MAX_EXECUTION_TIME_MS:J = 0x36ee80L

.field private static final MIN_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I = 0xa

.field private static final MIN_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I = 0xa

.field private static final MIN_RATE_LIMITING_WINDOW_MS:J = 0x7530L

.field private static final QC_CONSTANT_PREFIX:Ljava/lang/String; = "qc_"


# instance fields
.field public ALLOWED_TIME_PER_PERIOD_MS:J

.field public EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

.field public EJ_GRACE_PERIOD_TOP_APP_MS:J

.field public EJ_LIMIT_ACTIVE_MS:J

.field public EJ_LIMIT_ADDITION_INSTALLER_MS:J

.field public EJ_LIMIT_ADDITION_SPECIAL_MS:J

.field public EJ_LIMIT_FREQUENT_MS:J

.field public EJ_LIMIT_RARE_MS:J

.field public EJ_LIMIT_RESTRICTED_MS:J

.field public EJ_LIMIT_WORKING_MS:J

.field public EJ_REWARD_INTERACTION_MS:J

.field public EJ_REWARD_NOTIFICATION_SEEN_MS:J

.field public EJ_REWARD_TOP_APP_MS:J

.field public EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

.field public EJ_WINDOW_SIZE_MS:J

.field public IN_QUOTA_BUFFER_MS:J

.field public MAX_EXECUTION_TIME_MS:J

.field public MAX_JOB_COUNT_ACTIVE:I

.field public MAX_JOB_COUNT_FREQUENT:I

.field public MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

.field public MAX_JOB_COUNT_RARE:I

.field public MAX_JOB_COUNT_RESTRICTED:I

.field public MAX_JOB_COUNT_WORKING:I

.field public MAX_SESSION_COUNT_ACTIVE:I

.field public MAX_SESSION_COUNT_FREQUENT:I

.field public MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

.field public MAX_SESSION_COUNT_RARE:I

.field public MAX_SESSION_COUNT_RESTRICTED:I

.field public MAX_SESSION_COUNT_WORKING:I

.field public MIN_QUOTA_CHECK_DELAY_MS:J

.field public RATE_LIMITING_WINDOW_MS:J

.field public TIMING_SESSION_COALESCING_DURATION_MS:J

.field public WINDOW_SIZE_ACTIVE_MS:J

.field public WINDOW_SIZE_FREQUENT_MS:J

.field public WINDOW_SIZE_RARE_MS:J

.field public WINDOW_SIZE_RESTRICTED_MS:J

.field public WINDOW_SIZE_WORKING_MS:J

.field private mEJLimitConstantsUpdated:Z

.field private mExecutionPeriodConstantsUpdated:Z

.field private mRateLimitingConstantsUpdated:Z

.field private mShouldReevaluateConstraints:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 11

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    const-wide/32 v4, 0x6ddd00

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    const-wide/32 v4, 0x1b77400

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    const-wide/32 v4, 0x5265c00

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    const-wide/32 v6, 0xdbba00

    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    const/16 v6, 0x4b

    iput v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    const/16 v7, 0x78

    iput v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    const/16 v7, 0xc8

    iput v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    const/16 v7, 0x30

    iput v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    const/16 v7, 0xa

    iput v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    const-wide/32 v8, 0xea60

    iput-wide v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    const/16 v10, 0x14

    iput v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    iput v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    iput v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    const/16 v6, 0x8

    iput v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    const/4 v6, 0x3

    iput v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    iput v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide/16 v6, 0x1388

    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    iput-wide v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    const-wide/32 v6, 0x1b7740

    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

    iput-wide v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TOP_APP_MS:J

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/job/controllers/QuotaController$QcConstants;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method private dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "QuotaController:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_allowed_time_per_period_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_in_quota_buffer_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_active_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_working_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_frequent_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_rare_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_window_size_restricted_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_max_execution_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_active"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_working"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_frequent"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_rare"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_restricted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_rate_limiting_window_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_job_count_per_rate_limiting_window"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_active"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_working"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_frequent"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_rare"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_restricted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "qc_max_session_count_per_rate_limiting_window"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_timing_session_coalescing_duration_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_min_quota_check_delay_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_active_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_working_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_frequent_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_rare_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_restricted_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_addition_installer_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_limit_addition_special_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_window_size_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_top_app_time_chunk_size_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_reward_top_app_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_reward_interaction_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_reward_notification_seen_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_grace_period_temp_allowlist_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TOP_APP_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "qc_ej_grace_period_top_app_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method private dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    const-wide v0, 0x10b00000018L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    const-wide v4, 0x10300000005L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    const-wide v4, 0x10300000006L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    const-wide v4, 0x10300000014L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    const-wide v4, 0x10300000007L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    const-wide v3, 0x10500000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    const-wide v3, 0x10500000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    const-wide v3, 0x1050000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    const-wide v3, 0x10500000015L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    const-wide v4, 0x10500000013L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide v3, 0x1050000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    const-wide v3, 0x1050000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    const-wide v3, 0x1050000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    const-wide v3, 0x1050000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    const-wide v3, 0x10500000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    const-wide v3, 0x10500000016L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide v3, 0x10500000011L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    const-wide v4, 0x10300000012L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    const-wide v4, 0x10300000017L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    const-wide v4, 0x10300000018L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    const-wide v4, 0x10300000019L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    const-wide v4, 0x1030000001aL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    const-wide v4, 0x1030000001bL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    const-wide v4, 0x1030000001cL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    const-wide v4, 0x1030000001dL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    const-wide v4, 0x1030000001eL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    const-wide v4, 0x1030000001fL

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    const-wide v4, 0x10300000020L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    const-wide v4, 0x10300000021L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private updateEJLimitConstantsLocked()V
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    const-string/jumbo v2, "qc_ej_limit_active_ms"

    const-string/jumbo v3, "qc_ej_limit_working_ms"

    const-string/jumbo v4, "qc_ej_limit_frequent_ms"

    const-string/jumbo v5, "qc_ej_limit_rare_ms"

    const-string/jumbo v6, "qc_ej_limit_restricted_ms"

    const-string/jumbo v7, "qc_ej_limit_addition_special_ms"

    const-string/jumbo v8, "qc_ej_limit_addition_installer_ms"

    const-string/jumbo v9, "qc_ej_window_size_ms"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "jobscheduler"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    const-string/jumbo v3, "qc_ej_limit_active_ms"

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    const-string/jumbo v3, "qc_ej_limit_working_ms"

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    const-string/jumbo v3, "qc_ej_limit_frequent_ms"

    const-wide/32 v6, 0x927c0

    invoke-virtual {v2, v3, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    const-string/jumbo v3, "qc_ej_limit_rare_ms"

    invoke-virtual {v2, v3, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    const-string/jumbo v3, "qc_ej_limit_restricted_ms"

    const-wide/32 v8, 0x493e0

    invoke-virtual {v2, v3, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    const-string/jumbo v3, "qc_ej_limit_addition_installer_ms"

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    const-string/jumbo v3, "qc_ej_limit_addition_special_ms"

    const-wide/32 v4, 0xdbba0

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    const-string/jumbo v3, "qc_ej_window_size_ms"

    const-wide/32 v10, 0x5265c00

    invoke-virtual {v2, v3, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    const-wide/32 v14, 0x36ee80

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$5600(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v12

    cmp-long v3, v12, v10

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v10, v11}, Lcom/android/server/job/controllers/QuotaController;->access$5602(Lcom/android/server/job/controllers/QuotaController;J)J

    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_1
    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$5700(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v3

    const/4 v14, 0x0

    aget-wide v15, v3, v14

    cmp-long v3, v15, v12

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$5700(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v3

    aput-wide v12, v3, v14

    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_2
    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$5700(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aget-wide v14, v5, v1

    cmp-long v5, v14, v3

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$5700(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v3, v5, v1

    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_3
    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$5700(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    const/16 v16, 0x2

    aget-wide v17, v5, v16

    cmp-long v5, v17, v14

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$5700(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v14, v5, v16

    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_4
    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$5700(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    const/4 v8, 0x3

    aget-wide v18, v7, v8

    cmp-long v7, v18, v5

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$5700(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    aput-wide v5, v7, v8

    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_5
    iget-wide v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    move-object/from16 v18, v2

    const-wide/32 v1, 0x493e0

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$5700(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    const/4 v8, 0x5

    aget-wide v16, v7, v8

    cmp-long v7, v16, v1

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$5700(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    aput-wide v1, v7, v8

    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_6
    sub-long v7, v10, v12

    move-wide/from16 v16, v10

    iget-wide v9, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9}, Lcom/android/server/job/controllers/QuotaController;->access$5800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9, v7, v8}, Lcom/android/server/job/controllers/QuotaController;->access$5802(Lcom/android/server/job/controllers/QuotaController;J)J

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_7
    const-wide/16 v10, 0x0

    :goto_0
    sub-long v9, v16, v12

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9}, Lcom/android/server/job/controllers/QuotaController;->access$5900(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v9

    cmp-long v9, v9, v1

    if-eqz v9, :cond_8

    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->access$5902(Lcom/android/server/job/controllers/QuotaController;J)J

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_8
    return-void
.end method

.method private updateExecutionPeriodConstantsLocked()V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    const-string/jumbo v2, "qc_allowed_time_per_period_ms"

    const-string/jumbo v3, "qc_in_quota_buffer_ms"

    const-string/jumbo v4, "qc_max_execution_time_ms"

    const-string/jumbo v5, "qc_window_size_active_ms"

    const-string/jumbo v6, "qc_window_size_working_ms"

    const-string/jumbo v7, "qc_window_size_frequent_ms"

    const-string/jumbo v8, "qc_window_size_rare_ms"

    const-string/jumbo v9, "qc_window_size_restricted_ms"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "jobscheduler"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    nop

    const-string/jumbo v3, "qc_allowed_time_per_period_ms"

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    const-wide/16 v6, 0x7530

    const-string/jumbo v3, "qc_in_quota_buffer_ms"

    invoke-virtual {v2, v3, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    const-wide/32 v6, 0xdbba00

    const-string/jumbo v3, "qc_max_execution_time_ms"

    invoke-virtual {v2, v3, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    const-string/jumbo v3, "qc_window_size_active_ms"

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    const-wide/32 v3, 0x6ddd00

    const-string/jumbo v5, "qc_window_size_working_ms"

    invoke-virtual {v2, v5, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    const-wide/32 v3, 0x1b77400

    const-string/jumbo v5, "qc_window_size_frequent_ms"

    invoke-virtual {v2, v5, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    const-string/jumbo v3, "qc_window_size_rare_ms"

    const-wide/32 v4, 0x5265c00

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    nop

    const-string/jumbo v3, "qc_window_size_restricted_ms"

    invoke-virtual {v2, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    const-wide/32 v6, 0x36ee80

    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$4700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v6, v7}, Lcom/android/server/job/controllers/QuotaController;->access$4702(Lcom/android/server/job/controllers/QuotaController;J)J

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$4700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->access$4900(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v3, v8, v9}, Lcom/android/server/job/controllers/QuotaController;->access$4802(Lcom/android/server/job/controllers/QuotaController;J)J

    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_1
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$4700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$5000(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    cmp-long v3, v10, v8

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v8, v9}, Lcom/android/server/job/controllers/QuotaController;->access$5002(Lcom/android/server/job/controllers/QuotaController;J)J

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$5000(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$4900(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v3, v10, v11}, Lcom/android/server/job/controllers/QuotaController;->access$5102(Lcom/android/server/job/controllers/QuotaController;J)J

    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_2
    const-wide/16 v10, 0x0

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$5000(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v12

    const-wide/32 v14, 0x493e0

    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$4900(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    cmp-long v5, v10, v3

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->access$4902(Lcom/android/server/job/controllers/QuotaController;J)J

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$5000(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$4900(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v5, v10, v11}, Lcom/android/server/job/controllers/QuotaController;->access$5102(Lcom/android/server/job/controllers/QuotaController;J)J

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$4700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$4900(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v5, v10, v11}, Lcom/android/server/job/controllers/QuotaController;->access$4802(Lcom/android/server/job/controllers/QuotaController;J)J

    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_3
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$5000(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    const-wide/32 v14, 0x5265c00

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$5200(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    const/4 v12, 0x0

    aget-wide v13, v5, v12

    cmp-long v5, v13, v10

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$5200(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v10, v5, v12

    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_4
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$5000(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v12

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    move-object/from16 v18, v2

    const-wide/32 v1, 0x5265c00

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$5200(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v12

    const/4 v5, 0x1

    aget-wide v12, v12, v5

    cmp-long v12, v12, v1

    if-eqz v12, :cond_5

    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$5200(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v12

    aput-wide v1, v12, v5

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_5
    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$5000(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v12

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    move-wide/from16 v19, v6

    const-wide/32 v5, 0x5265c00

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$5200(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    const/4 v6, 0x2

    aget-wide v14, v5, v6

    cmp-long v5, v14, v12

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$5200(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v12, v5, v6

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_6
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$5000(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    move-wide/from16 v22, v6

    const-wide/32 v5, 0x5265c00

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-wide/from16 v14, v22

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$5200(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    const/4 v14, 0x3

    aget-wide v15, v5, v14

    cmp-long v5, v15, v6

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$5200(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v5

    aput-wide v6, v5, v14

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_7
    iget-object v14, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v14}, Lcom/android/server/job/controllers/QuotaController;->access$5000(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v14

    move-wide/from16 v16, v6

    const-wide/32 v5, 0x240c8400

    move-wide/from16 v21, v8

    iget-wide v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$5200(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    const/4 v8, 0x5

    aget-wide v14, v7, v8

    cmp-long v7, v14, v5

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$5200(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    aput-wide v5, v7, v8

    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_8
    return-void
.end method

.method private updateRateLimitingConstantsLocked()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    const-string/jumbo v1, "qc_rate_limiting_window_ms"

    const-string/jumbo v2, "qc_max_job_count_per_rate_limiting_window"

    const-string/jumbo v3, "qc_max_session_count_per_rate_limiting_window"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "jobscheduler"

    invoke-static {v5, v4}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v4

    const-wide/32 v5, 0xea60

    invoke-virtual {v4, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    nop

    const/16 v1, 0x14

    invoke-virtual {v4, v2, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    nop

    invoke-virtual {v4, v3, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide/32 v1, 0x5265c00

    const-wide/16 v5, 0x7530

    iget-wide v7, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$5300(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    cmp-long v3, v5, v1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->access$5302(Lcom/android/server/job/controllers/QuotaController;J)J

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_1
    iget v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const/16 v5, 0xa

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$5400(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v6

    if-eq v6, v3, :cond_2

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6, v3}, Lcom/android/server/job/controllers/QuotaController;->access$5402(Lcom/android/server/job/controllers/QuotaController;I)I

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_2
    iget v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$5500(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v6

    if-eq v6, v5, :cond_3

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6, v5}, Lcom/android/server/job/controllers/QuotaController;->access$5502(Lcom/android/server/job/controllers/QuotaController;I)I

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v3, "qc_max_session_count_frequent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1a

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v3, "qc_max_session_count_rare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1b

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v3, "qc_max_session_count_restricted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1c

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v3, "qc_ej_window_size_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v3, "qc_timing_session_coalescing_duration_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1d

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v3, "qc_window_size_active_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v3, "qc_max_job_count_working"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v3, "qc_ej_reward_top_app_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x20

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v3, "qc_ej_limit_working_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v3, "qc_max_session_count_working"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v3, "qc_in_quota_buffer_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v3, "qc_min_quota_check_delay_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1e

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v3, "qc_ej_grace_period_temp_allowlist_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x23

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v3, "qc_max_session_count_active"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v3, "qc_window_size_working_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v3, "qc_ej_grace_period_top_app_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x24

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v3, "qc_max_execution_time_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v3, "qc_ej_limit_addition_installer_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v3, "qc_ej_limit_rare_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v3, "qc_ej_limit_restricted_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v3, "qc_max_job_count_per_rate_limiting_window"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v3, "qc_max_job_count_frequent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v3, "qc_window_size_rare_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v3, "qc_allowed_time_per_period_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v3, "qc_max_job_count_restricted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v3, "qc_max_session_count_per_rate_limiting_window"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v3, "qc_rate_limiting_window_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v3, "qc_ej_reward_interaction_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x21

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v3, "qc_window_size_restricted_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_1d
    const-string/jumbo v3, "qc_max_job_count_rare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x16

    goto :goto_1

    :sswitch_1e
    const-string/jumbo v3, "qc_ej_top_app_time_chunk_size_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1f

    goto :goto_1

    :sswitch_1f
    const-string/jumbo v3, "qc_max_job_count_active"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x13

    goto :goto_1

    :sswitch_20
    const-string/jumbo v3, "qc_ej_reward_notification_seen_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x22

    goto :goto_1

    :sswitch_21
    const-string/jumbo v3, "qc_ej_limit_addition_special_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    goto :goto_1

    :sswitch_22
    const-string/jumbo v3, "qc_ej_limit_frequent_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto :goto_1

    :sswitch_23
    const-string/jumbo v3, "qc_window_size_frequent_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_24
    const-string/jumbo v3, "qc_ej_limit_active_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v11, " vs "

    const-string v12, "EJ top app time chunk less than reward: "

    const-string v13, "JobScheduler.Quota"

    const-wide/32 v14, 0x36ee80

    const-wide/32 v6, 0xea60

    const-wide/16 v4, 0x1388

    const-wide/32 v8, 0xdbba0

    move-object/from16 v16, v11

    const-wide/16 v10, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    nop

    invoke-virtual {v1, v2, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TOP_APP_MS:J

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->access$3302(Lcom/android/server/job/controllers/QuotaController;J)J

    goto/16 :goto_2

    :pswitch_1
    const-wide/32 v3, 0x2bf20

    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->access$3002(Lcom/android/server/job/controllers/QuotaController;J)J

    goto/16 :goto_2

    :pswitch_2
    nop

    invoke-virtual {v1, v2, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    const-wide/32 v6, 0x493e0

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->access$3802(Lcom/android/server/job/controllers/QuotaController;J)J

    goto/16 :goto_2

    :pswitch_3
    const-wide/16 v6, 0x3a98

    invoke-virtual {v1, v2, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/server/job/controllers/QuotaController;->access$3602(Lcom/android/server/job/controllers/QuotaController;J)J

    goto/16 :goto_2

    :pswitch_4
    nop

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    nop

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->access$2502(Lcom/android/server/job/controllers/QuotaController;J)J

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$2400(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$2400(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v6, v16

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v6, v16

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    const-wide/16 v10, 0x1

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$2400(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v7

    cmp-long v5, v7, v3

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->access$2402(Lcom/android/server/job/controllers/QuotaController;J)J

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$2400(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v7

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-gez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$2400(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_6
    nop

    invoke-virtual {v1, v2, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$1100(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->setMinQuotaCheckDelayMs(J)V

    goto/16 :goto_2

    :pswitch_7
    nop

    invoke-virtual {v1, v2, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    nop

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$4600(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->access$4602(Lcom/android/server/job/controllers/QuotaController;J)J

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_2

    :pswitch_8
    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$4500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/4 v5, 0x5

    aget v4, v4, v5

    if-eq v4, v3, :cond_1

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$4500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aput v3, v4, v5

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_2

    :pswitch_9
    const/4 v4, 0x1

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    nop

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$4500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v6

    aget v6, v6, v3

    if-eq v6, v5, :cond_1

    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$4500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v6

    aput v5, v6, v3

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_2

    :pswitch_a
    const/4 v4, 0x1

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    nop

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$4500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    const/4 v6, 0x2

    aget v5, v5, v6

    if-eq v5, v3, :cond_1

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$4500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    aput v3, v5, v6

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_2

    :pswitch_b
    const/4 v4, 0x1

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    nop

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$4500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    aget v5, v5, v4

    if-eq v5, v3, :cond_1

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$4500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    aput v3, v5, v4

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_2

    :pswitch_c
    const/4 v4, 0x1

    const/16 v3, 0x4b

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    nop

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$4500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    if-eq v5, v3, :cond_1

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$4500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    aput v3, v5, v6

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_2

    :pswitch_d
    nop

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    nop

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$4400(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/4 v5, 0x5

    aget v4, v4, v5

    if-eq v4, v3, :cond_1

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$4400(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aput v3, v4, v5

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_2

    :pswitch_e
    const/16 v3, 0x30

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    const/16 v4, 0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$4400(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    if-eq v4, v3, :cond_1

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$4400(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aput v3, v4, v5

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto/16 :goto_2

    :pswitch_f
    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    const/16 v4, 0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$4400(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/4 v5, 0x2

    aget v4, v4, v5

    if-eq v4, v3, :cond_1

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$4400(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aput v3, v4, v5

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto :goto_2

    :pswitch_10
    const/16 v3, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    const/16 v4, 0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$4400(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    if-eq v4, v3, :cond_1

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$4400(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aput v3, v4, v5

    iput-boolean v5, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto :goto_2

    :pswitch_11
    const/16 v3, 0x4b

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    const/16 v4, 0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$4400(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    if-eq v4, v3, :cond_1

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$4400(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    aput v3, v4, v5

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto :goto_2

    :pswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateEJLimitConstantsLocked()V

    goto :goto_2

    :pswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateRateLimitingConstantsLocked()V

    goto :goto_2

    :pswitch_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateExecutionPeriodConstantsLocked()V

    nop

    :cond_1
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74649652 -> :sswitch_24
        -0x64595545 -> :sswitch_23
        -0x59dc2eda -> :sswitch_22
        -0x5925a282 -> :sswitch_21
        -0x559f9f27 -> :sswitch_20
        -0x54322d00 -> :sswitch_1f
        -0x53fcd7ab -> :sswitch_1e
        -0x4d93a8e4 -> :sswitch_1d
        -0x4ab902f2 -> :sswitch_1c
        -0x3877c08a -> :sswitch_1b
        -0x38722911 -> :sswitch_1a
        -0x36564f14 -> :sswitch_19
        -0x2c5330ab -> :sswitch_18
        -0x2af1bf6c -> :sswitch_17
        -0x1c3a6d99 -> :sswitch_16
        -0x89fefb8 -> :sswitch_15
        0x131036e5 -> :sswitch_14
        0x151434b9 -> :sswitch_13
        0x1514a652 -> :sswitch_12
        0x1ec063cf -> :sswitch_11
        0x20593da9 -> :sswitch_10
        0x2751f3d8 -> :sswitch_f
        0x3c5536f0 -> :sswitch_e
        0x3fca90c7 -> :sswitch_d
        0x48395f9f -> :sswitch_c
        0x4978a53a -> :sswitch_b
        0x5461fd31 -> :sswitch_a
        0x59af5190 -> :sswitch_9
        0x5db41725 -> :sswitch_8
        0x6788a0b1 -> :sswitch_7
        0x6e145677 -> :sswitch_6
        0x71c1a483 -> :sswitch_5
        0x728b0d07 -> :sswitch_4
        0x7685d342 -> :sswitch_3
        0x7bf7519c -> :sswitch_2
        0x7c3bdaa3 -> :sswitch_1
        0x7f24784f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
