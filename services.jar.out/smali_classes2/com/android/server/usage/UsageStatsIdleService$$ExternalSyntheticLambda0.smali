.class public final synthetic Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/UsageStatsIdleService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsIdleService;Landroid/app/job/JobParameters;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UsageStatsIdleService;

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    iput p3, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UsageStatsIdleService;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    iget p0, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/usage/UsageStatsIdleService;->$r8$lambda$ZsYfqAFXuTM24Y9yxnOo-eCaFQc(Lcom/android/server/usage/UsageStatsIdleService;Landroid/app/job/JobParameters;I)V

    return-void
.end method
