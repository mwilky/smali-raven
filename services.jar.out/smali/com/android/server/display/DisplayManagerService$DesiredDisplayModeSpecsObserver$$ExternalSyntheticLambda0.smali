.class public final synthetic Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->$r8$lambda$ioXYqhD1SSriwY1Kx_huCTZKwXE(Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method
