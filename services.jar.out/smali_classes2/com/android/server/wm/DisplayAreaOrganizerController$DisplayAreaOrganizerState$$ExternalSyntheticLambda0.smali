.class public final synthetic Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    check-cast p1, Lcom/android/server/wm/DisplayArea;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->lambda$destroy$0$DisplayAreaOrganizerController$DisplayAreaOrganizerState(Landroid/os/IBinder;Lcom/android/server/wm/DisplayArea;)V

    return-void
.end method
