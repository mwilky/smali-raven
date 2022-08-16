.class public Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;
.super Lcom/android/systemui/CoreStartable;
.source "SmartSpaceComplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/SmartSpaceComplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Registrant"
.end annotation


# instance fields
.field public final mComplication:Lcom/android/systemui/dreams/SmartSpaceComplication;

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mSmartSpaceController:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

.field public final mSmartspaceListener:Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/dreams/SmartSpaceComplication;Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/CoreStartable;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$1;-><init>(Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->mSmartspaceListener:Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$1;

    iput-object p2, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iput-object p3, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->mComplication:Lcom/android/systemui/dreams/SmartSpaceComplication;

    iput-object p4, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->mSmartSpaceController:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    new-instance v1, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$2;-><init>(Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    return-void
.end method
