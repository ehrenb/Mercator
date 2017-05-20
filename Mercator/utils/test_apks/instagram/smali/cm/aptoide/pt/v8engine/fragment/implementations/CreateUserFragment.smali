.class public Lcm/aptoide/pt/v8engine/fragment/implementations/CreateUserFragment;
.super Lcm/aptoide/pt/v8engine/fragment/BaseToolbarFragment;
.source "CreateUserFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseToolbarFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcm/aptoide/pt/v8engine/fragment/implementations/CreateUserFragment;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/CreateUserFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/CreateUserFragment;-><init>()V

    .line 14
    return-object v0
.end method


# virtual methods
.method public getContentViewId()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->activity_create_user:I

    return v0
.end method
