.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScreenshotController;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->$r8$lambda$gt9OFoWFuwWifRTMA3g8tnckKkA(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    return-void
.end method
