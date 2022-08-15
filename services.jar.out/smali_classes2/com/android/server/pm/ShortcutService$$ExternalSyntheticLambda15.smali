.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/pm/ShortcutPackage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/pm/ShortcutPackage;

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->$r8$lambda$Ag0XIgZqs0w_nYGg8oKw8qyYsQU(Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
