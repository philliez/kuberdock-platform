<div class="col-md-3 sidebar">
    <ul class="nav nav-sidebar">
        <li role="presentation" class="success">Choose image</li>
        <li role="presentation" class="active">Set up image</li>
        <li role="presentation">Environment variables</li>
        <li role="presentation">Final setup</li>
    </ul>
</div>
<div id="details_content" class="col-md-9 col-sm-12 set-up-image no-padding">
    <div id="tab-content">
        <div class="image-name-wrapper">
            <%- image %>
            <% if (sourceUrl !== undefined) { %>
                <a class="pull-right image-link" href="<%- /^https?:\/\//.test(sourceUrl) ? sourceUrl : 'http://' + sourceUrl %>" target="blank"><span>Learn more about this image</span></a>
            <% } %>
        </div>
        <div class="entrypoint">
            <label>Command:</label>
            <div class="row fields">
                <div class="col-xs-6">
                    <input class="command" type="text" value="" placeholder="Сommand to start">
                </div>
            </div>
        </div>
        <div class="ports">
            <label>Ports:</label>
            <div id="editable-ports-list"></div>
            <div id="public-access-controls"></div>
        </div>
        <div class="volumes">
            <label>Volumes:</label>
            <div id="editable-vm-list"></div>
        </div>
    </div>
</div>
<div class="col-md-9 col-md-offset-3 col-sm-12 no-padding">
    <div class="description pull-left">
        <p>
            <sup>*</sup> <%= !isAWS ? 'Public IP' : 'Standard domain' %> will require additional payment<br>
            <sup>**</sup> Data wiped out on each container restart, use persistent storage if you want data to persist<br>
            <span id="public-access-type-note">
                <sup>***</sup> Type will apply for each container
            </span>
        </p>
    </div>
    <span class="buttons pull-right">
        <% if (flow === 'EDIT_CONTAINER_GENERAL'){ %>
            <button class="cancel-edit gray">Cancel</button>
            <button class="edit-entire-pod gray">Edit entire pod</button>
            <button class="save-changes blue">Save</button>
        <% } else { %>
            <button class="prev-step gray">Back</button>
            <button class="next-step">Next</button>
        <% } %>
    </span>
</div>
