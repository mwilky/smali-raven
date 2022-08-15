.class public final synthetic Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda6;->f$0:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda6;->f$0:Landroid/content/ComponentName;

    check-cast p1, Landroid/content/ComponentName$WithComponentName;

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/DumpUtils;->$r8$lambda$07Bkw0P8j5YmFxqdq8G3dznbu-E(Landroid/content/ComponentName;Landroid/content/ComponentName$WithComponentName;)Z

    move-result p0

    return p0
.end method
