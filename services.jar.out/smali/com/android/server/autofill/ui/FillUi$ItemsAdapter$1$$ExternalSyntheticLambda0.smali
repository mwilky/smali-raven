.class public final synthetic Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/CharSequence;

    check-cast p1, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    invoke-static {p0, p1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->$r8$lambda$vpdQf3pCARW9eyEJ6GgahxZmwjs(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/FillUi$ViewItem;)Z

    move-result p0

    return p0
.end method
