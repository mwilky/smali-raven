.class public Lcom/android/systemui/dreams/complication/DreamWeatherComplication$Registrant;
.super Lcom/android/systemui/CoreStartable;
.source "DreamWeatherComplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/complication/DreamWeatherComplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Registrant"
.end annotation


# instance fields
.field public final mComplication:Lcom/android/systemui/dreams/complication/DreamWeatherComplication;

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mSmartSpaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/dreams/complication/DreamWeatherComplication;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/CoreStartable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$Registrant;->mSmartSpaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    iput-object p3, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$Registrant;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iput-object p4, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$Registrant;->mComplication:Lcom/android/systemui/dreams/complication/DreamWeatherComplication;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$Registrant;->mSmartSpaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$Registrant;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$Registrant;->mComplication:Lcom/android/systemui/dreams/complication/DreamWeatherComplication;

    invoke-virtual {v0, p0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addComplication(Lcom/android/systemui/dreams/complication/Complication;)V

    :cond_0
    return-void
.end method
