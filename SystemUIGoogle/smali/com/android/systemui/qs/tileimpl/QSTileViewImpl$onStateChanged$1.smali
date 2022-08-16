.class public final Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$onStateChanged$1;
.super Ljava/lang/Object;
.source "QSTileViewImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $state:Lcom/android/systemui/plugins/qs/QSTile$State;

.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$onStateChanged$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$onStateChanged$1;->$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$onStateChanged$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$onStateChanged$1;->$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method
