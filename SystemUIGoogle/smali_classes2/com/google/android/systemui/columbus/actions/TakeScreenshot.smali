.class public final Lcom/google/android/systemui/columbus/actions/TakeScreenshot;
.super Lcom/google/android/systemui/columbus/actions/UserAction;
.source "TakeScreenshot.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/actions/TakeScreenshot$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/actions/TakeScreenshot$Companion;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final screenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private final tag:Ljava/lang/String;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/actions/TakeScreenshot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/actions/TakeScreenshot$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/actions/TakeScreenshot;->Companion:Lcom/google/android/systemui/columbus/actions/TakeScreenshot$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/actions/UserAction;-><init>(Landroid/content/Context;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/TakeScreenshot;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/TakeScreenshot;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p2, "Columbus/TakeScreenshot"

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/TakeScreenshot;->tag:Ljava/lang/String;

    new-instance p2, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {p2, p1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/TakeScreenshot;->screenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method


# virtual methods
.method public availableOnLockscreen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/TakeScreenshot;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/TakeScreenshot;->screenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-object v5, p0, Lcom/google/android/systemui/columbus/actions/TakeScreenshot;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZILandroid/os/Handler;Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/TakeScreenshot;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_SCREENSHOT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
