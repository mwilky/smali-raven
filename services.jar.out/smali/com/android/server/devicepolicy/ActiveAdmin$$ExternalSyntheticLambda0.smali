.class public final synthetic Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;
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

    iput p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->$r8$lambda$fQ1kXvm6KzpR-zLrfpw6xjrVpds(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method
