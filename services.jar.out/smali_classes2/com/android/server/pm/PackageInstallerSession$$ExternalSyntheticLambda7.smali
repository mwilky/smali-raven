.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Landroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda7;->f$0:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda7;->f$0:Landroid/content/IntentSender;

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->$r8$lambda$mhxB4y3uj1zi40r5o7Iplm3jiNY(Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    return p0
.end method
