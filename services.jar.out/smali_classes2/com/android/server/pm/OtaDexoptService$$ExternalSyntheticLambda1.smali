.class public final synthetic Lcom/android/server/pm/OtaDexoptService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-static {p1}, Lcom/android/server/pm/OtaDexoptService;->$r8$lambda$kVT16uUu7PUfM5w_HVAMYw4Y-sY(Lcom/android/server/pm/pkg/PackageStateInternal;)J

    move-result-wide p0

    return-wide p0
.end method
