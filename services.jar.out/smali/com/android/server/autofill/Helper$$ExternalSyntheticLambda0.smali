.class public final synthetic Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/autofill/Helper$ViewNodeFilter;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final matches(Landroid/app/assist/AssistStructure$ViewNode;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/autofill/Helper;->$r8$lambda$QT4zW_xAuSOTApq9WqL3byvt5Qc([Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;)Z

    move-result p0

    return p0
.end method
