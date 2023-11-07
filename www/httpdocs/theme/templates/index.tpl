<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>nzb.to - Newznab Proxy</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/dark.css">
</head>
<style>
    body {
        background: linear-gradient(334deg, #1b2740, #3b1570, #600832);
        background-size: 180% 180%;
        animation: gradient-animation 25s ease infinite;
        height: 100vh;
    }

    @keyframes gradient-animation {
        0% {
            background-position: 0% 50%;
        }
        50% {
            background-position: 100% 50%;
        }
        100% {
            background-position: 0% 50%;
        }
    }

    .panel {
        background-color: #000000bf;
        border-radius: 10px;
    }

    .panel-heading {
        border-bottom: 1px solid #ffffff;
        padding: 10px;
    }

    .panel-title {
        margin: 0;
    }

    .panel-body {
        padding: 20px;
    }

    .alert-info {
        background-color: #ffffff30;
        padding: 5px 5px 5px 50px;
    }

    .full-width {
        width: 100%;
    }
</style>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Check if the elements are presents, if so add the event handler
        let txtApiKey = document.getElementById('txtApiKey');
        let txtUrl = document.getElementById('txtUrl');

        if (txtUrl && txtApiKey) {
            txtUrl.addEventListener('click', () => txtUrl.select());
            txtApiKey.addEventListener('click', () => txtApiKey.select());
        }
    }, false);
</script>
<body>
{if isset($key)}
    <div class="panel">
        <div class="panel-heading">
            <h3 class="panel-title">Generated API Key</h3>
        </div>
        <div class="panel-body">
            <div class="alert-info">
                <p>
                    Please make sure you have enabled the "<i>append password to filename</i>" option in your nzb.to
                    Account!
                </p>
            </div>

            <br/>

            <label for="txtUrl">URL:</label>
            <input id="txtUrl" type="text" class="form-control full-width" value="{$smarty.const.API_BASE}" readonly>

            <br/>

            <label for="txtApiKey">API Key:</label>
            <input id="txtApiKey" type="text" class="form-control full-width" value="{$key}" readonly>

            <br/>

            <p>You are now able to add a new Newznab Provider to your favorite downloader / *arr service. Please
                use the <b>API Key</b> and <b>URL</b> from above.
            </p>
        </div>
    </div>
{else}
    <div class="panel">
        <div class="panel-heading">
            <h3 class="panel-title">Login to nzb.to</h3>
        </div>
        <div class="panel-body">
            <form method="POST">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" name="username" id="username">
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password">
                </div>
                <br/>
                <button type="submit" class="btn btn-default">Login</button>
            </form>
        </div>
    </div>
{/if}
</body>
</html>
