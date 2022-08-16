.class public final Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;
.super Ljava/lang/Object;
.source "ScreenshotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionTransition"
.end annotation


# instance fields
.field public action:Landroid/app/Notification$Action;

.field public bundle:Landroid/os/Bundle;

.field public onCancelRunnable:Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
