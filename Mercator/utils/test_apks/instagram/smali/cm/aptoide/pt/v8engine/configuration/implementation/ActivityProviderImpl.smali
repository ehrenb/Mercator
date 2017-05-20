.class public Lcm/aptoide/pt/v8engine/configuration/implementation/ActivityProviderImpl;
.super Ljava/lang/Object;
.source "ActivityProviderImpl.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainActivityFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v7/a/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    const-class v0, Lcm/aptoide/pt/v8engine/MainActivityFragment;

    return-object v0
.end method
