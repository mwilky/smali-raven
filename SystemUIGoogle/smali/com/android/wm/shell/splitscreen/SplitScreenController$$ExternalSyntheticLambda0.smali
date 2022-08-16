.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/view/RemoteAnimationTarget;

    check-cast p2, Landroid/view/RemoteAnimationTarget;

    iget p0, p1, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    iget p1, p2, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    sub-int/2addr p0, p1

    return p0
.end method
