.class public final synthetic Lcom/android/server/pm/pkg/PackageStateUnserialized$$ExternalSyntheticLambda0;
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

    check-cast p1, Landroid/content/pm/SharedLibraryInfo;

    invoke-static {p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->$r8$lambda$NOe4IykUj3ZbTnY-JER9obdI6AE(Landroid/content/pm/SharedLibraryInfo;)Z

    move-result p0

    return p0
.end method
