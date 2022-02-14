.class Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
.super Ljava/lang/Object;
.source "WindowOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallerInfo"
.end annotation


# instance fields
.field final mPid:I

.field final mUid:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    return-void
.end method
