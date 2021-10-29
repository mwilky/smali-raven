.class public Lcom/google/android/systemui/elmyra/actions/CameraAction;
.super Lcom/google/android/systemui/elmyra/actions/ServiceAction;
.source "CameraAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;
    }
.end annotation


# instance fields
.field private final mCameraPackageName:Ljava/lang/String;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$string;->google_camera_app_package_name:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/CameraAction;->mCameraPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/CameraAction;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/List;Lcom/google/android/systemui/elmyra/actions/CameraAction$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/elmyra/actions/CameraAction;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected checkSupportedCaller()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/CameraAction;->mCameraPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->checkSupportedCaller(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/CameraAction;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapseShade()V

    invoke-super {p0, p1}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method
