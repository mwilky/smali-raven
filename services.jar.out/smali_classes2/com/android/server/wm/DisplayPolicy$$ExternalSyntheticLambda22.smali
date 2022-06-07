.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic f$1:Lcom/android/server/wm/DisplayFrames;

.field public final synthetic f$2:Lcom/android/server/wm/InsetsSourceProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda22;->f$1:Lcom/android/server/wm/DisplayFrames;

    iput-object p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda22;->f$2:Lcom/android/server/wm/InsetsSourceProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda22;->f$1:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda22;->f$2:Lcom/android/server/wm/InsetsSourceProvider;

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/DisplayPolicy;->lambda$simulateLayoutDisplay$14$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/InsetsSourceProvider;Landroid/graphics/Rect;)V

    return-void
.end method
