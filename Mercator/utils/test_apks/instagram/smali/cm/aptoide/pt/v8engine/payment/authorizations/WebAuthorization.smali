.class public Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;
.super Lcm/aptoide/pt/v8engine/payment/Authorization;
.source "WebAuthorization.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final redirectUrl:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/payment/Authorization$Status;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p2, p6, p5}, Lcm/aptoide/pt/v8engine/payment/Authorization;-><init>(ILjava/lang/String;Lcm/aptoide/pt/v8engine/payment/Authorization$Status;)V

    .line 23
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;->context:Landroid/content/Context;

    .line 24
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;->url:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;->redirectUrl:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;->redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;->url:Ljava/lang/String;

    return-object v0
.end method
