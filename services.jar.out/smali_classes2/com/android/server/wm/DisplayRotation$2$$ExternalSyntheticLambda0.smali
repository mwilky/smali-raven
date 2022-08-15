.class public final synthetic Lcom/android/server/wm/DisplayRotation$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/DisplayRotation;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p3, Landroid/window/WindowContainerTransaction;

    invoke-static {p1, p0, p3}, Lcom/android/server/wm/DisplayRotation$2;->$r8$lambda$HRnOc5B33L_wXNCdOaZiBpzHkBk(Ljava/lang/Object;ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method
