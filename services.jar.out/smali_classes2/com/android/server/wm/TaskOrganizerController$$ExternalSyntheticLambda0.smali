.class public final synthetic Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskOrganizerController;

.field public final synthetic f$1:Landroid/window/ITaskOrganizer;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;->f$1:Landroid/window/ITaskOrganizer;

    iput p3, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;->f$1:Landroid/window/ITaskOrganizer;

    iget v2, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskOrganizerController;->lambda$unregisterTaskOrganizer$2$TaskOrganizerController(Landroid/window/ITaskOrganizer;I)V

    return-void
.end method
