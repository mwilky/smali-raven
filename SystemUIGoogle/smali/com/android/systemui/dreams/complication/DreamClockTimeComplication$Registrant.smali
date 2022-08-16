.class public Lcom/android/systemui/dreams/complication/DreamClockTimeComplication$Registrant;
.super Lcom/android/systemui/CoreStartable;
.source "DreamClockTimeComplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/complication/DreamClockTimeComplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Registrant"
.end annotation


# instance fields
.field public final mComplication:Lcom/android/systemui/dreams/complication/DreamClockTimeComplication;

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/dreams/complication/DreamClockTimeComplication;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/CoreStartable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/dreams/complication/DreamClockTimeComplication$Registrant;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iput-object p3, p0, Lcom/android/systemui/dreams/complication/DreamClockTimeComplication$Registrant;->mComplication:Lcom/android/systemui/dreams/complication/DreamClockTimeComplication;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/DreamClockTimeComplication$Registrant;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/DreamClockTimeComplication$Registrant;->mComplication:Lcom/android/systemui/dreams/complication/DreamClockTimeComplication;

    invoke-virtual {v0, p0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addComplication(Lcom/android/systemui/dreams/complication/Complication;)V

    return-void
.end method
