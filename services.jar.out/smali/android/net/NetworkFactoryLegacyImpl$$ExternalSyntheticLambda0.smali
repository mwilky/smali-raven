.class public final synthetic Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/NetworkFactoryLegacyImpl;

.field public final synthetic f$1:Landroid/net/NetworkRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkFactoryLegacyImpl;Landroid/net/NetworkRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;->f$0:Landroid/net/NetworkFactoryLegacyImpl;

    iput-object p2, p0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;->f$1:Landroid/net/NetworkRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;->f$0:Landroid/net/NetworkFactoryLegacyImpl;

    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;->f$1:Landroid/net/NetworkRequest;

    invoke-static {v0, p0}, Landroid/net/NetworkFactoryLegacyImpl;->$r8$lambda$CwIAIE9r9OQ2aK_O7UE57tdTguU(Landroid/net/NetworkFactoryLegacyImpl;Landroid/net/NetworkRequest;)V

    return-void
.end method
