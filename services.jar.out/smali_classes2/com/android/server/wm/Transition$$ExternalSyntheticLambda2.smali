.class public final synthetic Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/Transition;->$r8$lambda$Je4yVWjrJ8YV8dZvxg6RtHPZIxI(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method