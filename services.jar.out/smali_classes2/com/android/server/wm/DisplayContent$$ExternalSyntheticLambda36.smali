.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;->f$0:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$9LgCLM_8NlTJzEGhRc6M8_MEiLc(ILcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method
