.class public final Lcom/google/android/systemui/coversheet/CoversheetService$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CoversheetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/coversheet/CoversheetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/coversheet/CoversheetService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/coversheet/CoversheetService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/coversheet/CoversheetService$1;->this$0:Lcom/google/android/systemui/coversheet/CoversheetService;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardVisibilityChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/coversheet/CoversheetService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Coversheet"

    const-string v1, "onKeyguardVisibilityChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/coversheet/CoversheetService$1;->this$0:Lcom/google/android/systemui/coversheet/CoversheetService;

    iput-boolean p1, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mKeyguardShowing:Z

    invoke-static {p0}, Lcom/google/android/systemui/coversheet/CoversheetService;->-$$Nest$mstartCoversheetIfNeeded(Lcom/google/android/systemui/coversheet/CoversheetService;)V

    return-void
.end method

.method public final onUserUnlocked()V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/coversheet/CoversheetService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Coversheet"

    const-string/jumbo v1, "onUserUnlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/coversheet/CoversheetService$1;->this$0:Lcom/google/android/systemui/coversheet/CoversheetService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mUserUnlocked:Z

    invoke-static {p0}, Lcom/google/android/systemui/coversheet/CoversheetService;->-$$Nest$mstartCoversheetIfNeeded(Lcom/google/android/systemui/coversheet/CoversheetService;)V

    return-void
.end method
