.class public final Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDeviceManager$Entry;->setCurrent(Lcom/android/systemui/media/MediaDeviceData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $value:Lcom/android/systemui/media/MediaDeviceData;

.field public final synthetic this$0:Lcom/android/systemui/media/MediaDeviceManager;

.field public final synthetic this$1:Lcom/android/systemui/media/MediaDeviceManager$Entry;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaDeviceManager;Lcom/android/systemui/media/MediaDeviceManager$Entry;Lcom/android/systemui/media/MediaDeviceData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;->this$1:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;->$value:Lcom/android/systemui/media/MediaDeviceData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;->this$1:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    iget-object v2, v1, Lcom/android/systemui/media/MediaDeviceManager$Entry;->key:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/systemui/media/MediaDeviceManager$Entry;->oldKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;->$value:Lcom/android/systemui/media/MediaDeviceData;

    iget-object v0, v0, Lcom/android/systemui/media/MediaDeviceManager;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaDeviceManager$Listener;

    invoke-interface {v3, v2, v1, p0}, Lcom/android/systemui/media/MediaDeviceManager$Listener;->onMediaDeviceChanged(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceData;)V

    goto :goto_0

    :cond_0
    return-void
.end method
