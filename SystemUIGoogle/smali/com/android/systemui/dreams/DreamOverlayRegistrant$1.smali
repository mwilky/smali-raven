.class public final Lcom/android/systemui/dreams/DreamOverlayRegistrant$1;
.super Landroid/content/BroadcastReceiver;
.source "DreamOverlayRegistrant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/DreamOverlayRegistrant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayRegistrant;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayRegistrant;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayRegistrant;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    sget-boolean p1, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "DreamOverlayRegistrant"

    const-string/jumbo p2, "package changed receiver - onReceive"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayRegistrant;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->registerOverlayService()V

    return-void
.end method
