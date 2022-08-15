.class public final synthetic Lcom/android/server/pm/ShortcutPackage$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ShortcutPackage$1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ShortcutPackage$1;

    check-cast p1, Landroid/app/appsearch/GenericDocument;

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage$1;->$r8$lambda$guoWLnNTn1DzOJ1LXA9MRWgslaA(Lcom/android/server/pm/ShortcutPackage$1;Landroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method
