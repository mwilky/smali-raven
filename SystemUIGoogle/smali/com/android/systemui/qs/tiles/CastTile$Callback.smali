.class public final Lcom/android/systemui/qs/tiles/CastTile$Callback;
.super Ljava/lang/Object;
.source "CastTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CastController$Callback;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CastTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Callback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/CastTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCastDevicesChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final onKeyguardShowingChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
