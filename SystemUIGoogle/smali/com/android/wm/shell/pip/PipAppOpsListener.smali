.class public final Lcom/android/wm/shell/pip/PipAppOpsListener;
.super Ljava/lang/Object;
.source "PipAppOpsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/PipAppOpsListener$Callback;
    }
.end annotation


# instance fields
.field public mAppOpsChangedListener:Lcom/android/wm/shell/pip/PipAppOpsListener$1;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mCallback:Lcom/android/wm/shell/pip/PipAppOpsListener$Callback;

.field public mContext:Landroid/content/Context;

.field public mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipAppOpsListener$Callback;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/pip/PipAppOpsListener$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipAppOpsListener$1;-><init>(Lcom/android/wm/shell/pip/PipAppOpsListener;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsChangedListener:Lcom/android/wm/shell/pip/PipAppOpsListener$1;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const-string p3, "appops"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mCallback:Lcom/android/wm/shell/pip/PipAppOpsListener$Callback;

    return-void
.end method
