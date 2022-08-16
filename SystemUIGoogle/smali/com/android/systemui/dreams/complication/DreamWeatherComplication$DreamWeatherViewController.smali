.class public final Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;
.super Lcom/android/systemui/util/ViewController;
.source "DreamWeatherComplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/complication/DreamWeatherComplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DreamWeatherViewController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field public final mSmartSpaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

.field public mSmartspaceTargetListener:Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;->mSmartSpaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    return-void
.end method


# virtual methods
.method public final onViewAttached()V
    .locals 2

    new-instance v0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;)V

    iput-object v0, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;->mSmartspaceTargetListener:Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;->mSmartSpaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v1}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    :goto_0
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;->mSmartSpaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;->mSmartspaceTargetListener:Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController$$ExternalSyntheticLambda0;

    iget-object v1, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v1}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    :goto_0
    return-void
.end method
