.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:Lcom/android/server/display/LogicalDisplay;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/display/DisplayManagerService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/display/LogicalDisplay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/display/DisplayManagerService;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/display/LogicalDisplay;

    invoke-static {v0, p0}, Lcom/android/server/display/DisplayManagerService;->$r8$lambda$QX65D0YOymqNLqk77V3wPqKm4e4(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method
