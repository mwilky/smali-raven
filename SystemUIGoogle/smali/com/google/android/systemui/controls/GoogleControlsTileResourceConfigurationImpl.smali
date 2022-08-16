.class public final Lcom/google/android/systemui/controls/GoogleControlsTileResourceConfigurationImpl;
.super Ljava/lang/Object;
.source "GoogleControlsTileResourceConfigurationImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/controller/ControlsTileResourceConfiguration;


# instance fields
.field public final controlsController:Lcom/android/systemui/controls/controller/ControlsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/controls/GoogleControlsTileResourceConfigurationImpl;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    return-void
.end method


# virtual methods
.method public final getTileImageId()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/controls/GoogleControlsTileResourceConfigurationImpl;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {p0}, Lcom/android/systemui/controls/controller/ControlsController;->getPreferredStructure()Lcom/android/systemui/controls/controller/StructureInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.apps.chromecast.app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f08044e

    goto :goto_0

    :cond_0
    const p0, 0x7f080416

    :goto_0
    return p0
.end method

.method public final getTileTitleId()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/controls/GoogleControlsTileResourceConfigurationImpl;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {p0}, Lcom/android/systemui/controls/controller/ControlsController;->getPreferredStructure()Lcom/android/systemui/controls/controller/StructureInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.apps.chromecast.app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f13033f

    goto :goto_0

    :cond_0
    const p0, 0x7f1305a9

    :goto_0
    return p0
.end method
