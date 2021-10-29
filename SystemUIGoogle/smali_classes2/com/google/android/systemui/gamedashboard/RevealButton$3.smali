.class Lcom/google/android/systemui/gamedashboard/RevealButton$3;
.super Landroid/util/IntProperty;
.source "RevealButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/RevealButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lcom/google/android/systemui/gamedashboard/RevealButton;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/systemui/gamedashboard/RevealButton;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/RevealButton;->access$500(Lcom/google/android/systemui/gamedashboard/RevealButton;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/RevealButton$3;->get(Lcom/google/android/systemui/gamedashboard/RevealButton;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/google/android/systemui/gamedashboard/RevealButton;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/systemui/gamedashboard/RevealButton;->access$400(Lcom/google/android/systemui/gamedashboard/RevealButton;I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/RevealButton$3;->setValue(Lcom/google/android/systemui/gamedashboard/RevealButton;I)V

    return-void
.end method
