.class public final synthetic Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/SystemUIApplication;

.field public final synthetic f$1:I

.field public final synthetic f$3:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SystemUIApplication;ILjava/lang/String;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/SystemUIApplication;

    iput p2, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;->f$1:I

    iput-object p4, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;->f$3:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/SystemUIApplication;

    iget v1, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;->f$3:Ljava/util/Map$Entry;

    iget-object v0, v0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/CoreStartable;

    invoke-virtual {p0}, Lcom/android/systemui/CoreStartable;->start()V

    aput-object p0, v0, v1

    return-void
.end method
