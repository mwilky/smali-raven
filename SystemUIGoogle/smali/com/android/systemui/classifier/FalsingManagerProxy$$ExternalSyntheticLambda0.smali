.class public final synthetic Lcom/android/systemui/classifier/FalsingManagerProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/FalsingManagerProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingManagerProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/classifier/FalsingManagerProxy;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/classifier/FalsingManagerProxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManagerProxy;->setupFalsingManager()V

    :goto_0
    return-void
.end method
