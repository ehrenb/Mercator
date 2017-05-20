.class public Lcm/aptoide/accountmanager/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String;

.field static final ARG_ACCOUNT_TYPE:Ljava/lang/String; = "ACCOUNT_TYPE"

.field static final ARG_AUTH_TYPE:Ljava/lang/String; = "AUTH_TYPE"

.field static final ARG_IS_ADDING_NEW_ACCOUNT:Ljava/lang/String; = "IS_ADDING_ACCOUNT"

.field static final ARG_OPTIONS_BUNDLE:Ljava/lang/String; = "BE"

.field static final AUTHTOKEN_TYPE_FULL_ACCESS:Ljava/lang/String; = "Full access"

.field static final AUTHTOKEN_TYPE_FULL_ACCESS_LABEL:Ljava/lang/String; = "Full access to an Aptoide account"

.field static final AUTHTOKEN_TYPE_READ_ONLY:Ljava/lang/String; = "Read only"

.field static final AUTHTOKEN_TYPE_READ_ONLY_LABEL:Ljava/lang/String; = "Read only access to an Aptoide account"

.field public static final IS_LOCALYTICS_ENABLE_KEY:Ljava/lang/String; = "IS_LOCALYTICS_ENABLE_KEY"

.field public static final IS_LOCALYTICS_FIRST_SESSION:Ljava/lang/String; = "IS_LOCALYTICS_FIRST_SESSION"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getAccountType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/accountmanager/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
