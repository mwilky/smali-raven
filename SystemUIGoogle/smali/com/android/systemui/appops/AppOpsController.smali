.class public interface abstract Lcom/android/systemui/appops/AppOpsController;
.super Ljava/lang/Object;
.source "AppOpsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appops/AppOpsController$Callback;
    }
.end annotation


# virtual methods
.method public abstract addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V
.end method

.method public abstract getActiveAppOps()Ljava/util/ArrayList;
.end method

.method public abstract getActiveAppOps(Z)Ljava/util/ArrayList;
.end method

.method public abstract isMicMuted()Z
.end method

.method public abstract removeCallback([ILcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;)V
.end method
