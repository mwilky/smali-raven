.class public Lcom/android/server/policy/PhoneWindowManager$9;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mcancelGlobalActionsAction(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mcancelPendingRingerToggleChordAction(Lcom/android/server/policy/PhoneWindowManager;)V

    :goto_0
    return-void
.end method

.method public execute()V
    .registers 7

    .line 436
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;
    
    iget v0, v5, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    .line 437
    .local v0, "i":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 438
    invoke-static {v5}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$minterceptRingerToggleChord(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 439
    iput-boolean v1, v5, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto :goto_32

    .line 440
    :cond_b
    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    goto :goto_32

    .line 442
    :cond_f
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->mBlockPowerMenuKeyguard:Z

    const/4 v3, 0x0

    const/16 v4, 0x2713

    if-eqz v2, :cond_28

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 443
    const-string v2, "Power + Volume Up - Global Actions Suppressed"

    invoke-static {v5, v4, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mperformHapticFeedback(Lcom/android/server/policy/PhoneWindowManager;IZLjava/lang/String;)Z

    goto :goto_30

    .line 445
    :cond_28
    const-string v2, "Power + Volume Up - Global Actions"

    invoke-static {v5, v4, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mperformHapticFeedback(Lcom/android/server/policy/PhoneWindowManager;IZLjava/lang/String;)Z

    .line 446
    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    .line 448
    :goto_30
    iput-boolean v1, v5, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 450
    :goto_32
    return-void
.end method

.method public preCondition()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
