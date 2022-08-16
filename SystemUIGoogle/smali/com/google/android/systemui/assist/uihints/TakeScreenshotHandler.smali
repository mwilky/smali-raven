.class public final Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;
.super Ljava/lang/Object;
.source "TakeScreenshotHandler.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TakeScreenshotListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    return-void
.end method


# virtual methods
.method public final onTakeScreenshot(Landroid/app/PendingIntent;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1}, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;Landroid/app/PendingIntent;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZLandroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method
