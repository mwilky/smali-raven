.class public final synthetic Lcom/android/server/integrity/model/IntegrityCheckResult$$ExternalSyntheticLambda1;
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

    check-cast p1, Landroid/content/integrity/Rule;

    invoke-static {p1}, Lcom/android/server/integrity/model/IntegrityCheckResult;->$r8$lambda$7R5dI0EzN7bSJcTl6vjvBZDdveA(Landroid/content/integrity/Rule;)Z

    move-result p0

    return p0
.end method
