.class public Lcom/android/systemui/qs/QSDetailDisplayer;
.super Ljava/lang/Object;
.source "QSDetailDisplayer.java"


# instance fields
.field private mQsPanelController:Lcom/android/systemui/qs/QSPanelController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setQsPanelController(Lcom/android/systemui/qs/QSPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailDisplayer;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    return-void
.end method

.method public showDetailAdapter(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailDisplayer;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSPanelController;->showDetailAdapter(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    :cond_0
    return-void
.end method
